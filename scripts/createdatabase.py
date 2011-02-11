#!/usr/bin/python
import os
import os.path
import re

from database import Database

class CreateDatabase(object):
    
    def __init__(self, databaseName, manifestPath, scriptDirectory, dropExisting):
        self.__databaseName = databaseName
        self.__dropExisting = dropExisting
        self.__manifestPath = manifestPath
        self.__scriptDirectory = scriptDirectory
        
    def go(self):
        if self.__dropExisting:
            print('Dropping existing database')
            Database.execute('dropdb --no-password {0}'.format(self.__databaseName))
            
        Database.execute('createdb --no-password --encoding "UTF-8" --locale "en_US.utf8" --template template0 --echo {0} "Where Kestava data lives"'.format(self.__databaseName))
        Database.execute('createlang --no-password plpgsql {0}'.format(self.__databaseName))
        
        for i in [
            '/usr/share/postgresql/8.4/contrib/postgis-1.5/postgis.sql',
            '/usr/share/postgresql/8.4/contrib/postgis-1.5/spatial_ref_sys.sql',
            '/usr/share/postgresql/8.4/contrib/postgis_comments.sql']:
            Database.execute('psql --no-password -f {0} -d {1} -a'.format(i, self.__databaseName))
        
        Database.run_scripts(self.__databaseName, self.__manifestPath)