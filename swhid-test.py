import subprocess
import requests,json

instruction = 'swh-identify --type auto --no-filename '
src_name = 'fingerprints.txt'
command =instruction + src_name
status, swhid = subprocess.getstatusoutput(command)
if status == 1:
    print('Error')
else:
    print(swhid)

#example_swhid = 'swh:1:rev:96db9023b881d7cd9f379b0c154650d6c108e9a3'

# req = https://archive.softwareheritage.org/<identifier>
# val = subprocess.run('curl -i https://archive.softwareheritage.org/api/1/resolve/' + swhid)

#params = {'swhid':swhid}

#r = requests.get(' 
