import subprocess
import os.path
import re

class Database(object):
    
    @staticmethod
    def execute(cmd):
        print(cmd)
        p = subprocess.Popen(cmd, shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        result = p.communicate()
        if not result[0] == '':
            print('Result: {0}'.format(result[0]))
            
    @staticmethod
    def run_scripts(databaseName, manifestPath):
        l = []
        with open(manifestPath) as manifest:
            for line in manifest:
                print(line)
                m = re.search("^[\w\d_'-]+.sql", line)
                if not m is None:
                    l.append(m.group(0))
                
        scriptDir = os.path.dirname(manifestPath)
        for i in l:
            scriptPath = os.path.join(scriptDir, i)
            cmd = 'psql --no-password -f {0} -d {1} -a'.format(scriptPath, databaseName)
            Database.execute(cmd)