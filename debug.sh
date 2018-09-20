# Import auto pilot
source ./autopilot.sh

# Cleanup
echo Demo Setup: In Progress...
rm -rf ./dreamhouse-sfdx
git clone -q https://github.com/dreamhouseapp/dreamhouse-sfdx > /dev/null
cd ./dreamhouse-sfdx
sfdx force:org:create -f config/project-scratch-def.json -s -a mydhdev > /dev/null
echo Demo Setup: In Progress...
sfdx force:source:push > /dev/null
echo Demo Setup: Complete
cd ..


# Demo script
dprintf "git clone https://github.com/dreamhouseapp/dreamhouse-sfdx"
dprintf "cd ./dreamhouse-sfdx" 
dprintf "sfdx force:org:create -f config/project-scratch-def.json -s -a mydhdev"
dprintf "sfdx force:source:push"
dprintf "code ."
