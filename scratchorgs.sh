# Import auto pilot
source ./autopilot.sh

# Cleanup
rm -rf ./dreamhouse-sfdx
node ./testing.js

# Demo script
dprintf "git clone https://github.com/dreamhouseapp/dreamhouse-sfdx"
dprintf "cd ./dreamhouse-sfdx" 
dprintf "code ."
dprintf "sfdx force:org:create -f config/project-scratch-def.json -s -a mydhdev"
dprintf "sfdx force:source:push"
dprintf "sfdx force:source:pull"
dprintf "git add ."
dprintf "git commit -m 'new component'"
cd ..