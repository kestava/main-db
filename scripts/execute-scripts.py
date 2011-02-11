"""
Executes the scripts found in a given manifest
"""

import sys
from getopt import getopt, GetoptError

import database

def usage():
    print('''Usage: execute-scripts.py <options>
    
options:

-n (--databaseName) -> required
-m (--scriptManifestPath) -> required
''')
    
def main(commandLineArgs):
    
    try:
        rawOpts, args = getopt(
            commandLineArgs,
            'n:m:',
            ['databaseName=', 'scriptManifestPath='])
        
    except GetoptError, msg:
        print(str(msg))
        usage()
        sys.exit(2)
    
    opts = {}
    for i in rawOpts:
        opts[i[0]] = i[1]
        
    def get_opt(short, long, required=False):
        if short in opts:
            return opts[short]
        elif long in opts:
            return opts[long]
        elif required is True:
            print('Option missing: {0} (or {1})\n'.format(short, long))
            usage()
            sys.exit()
        else:
            return None
    
    databaseName = get_opt('-n', '--databaseName', True)
    manifestPath = get_opt('-m', '--scriptManifestPath', True)
    
    print('Database Name: {0}'.format(databaseName))
    print('Manifest Path: {0}'.format(manifestPath))

    database.Database.run_scripts(databaseName, manifestPath)
    
if __name__ == '__main__':
    main(sys.argv[1:])