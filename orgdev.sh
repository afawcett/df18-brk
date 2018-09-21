# Import auto pilot
source ./autopilot.sh

# Cleanup
rm -rf ./dreamhouse-sfdx
node ./testing.js

# Demo script
dprintf "sfdx force:project:create --projectname dreamhouse-sfdx --manifest"
dprintf "cd dreamhouse-sfdx"
dprintf "sfdx force:config:set defaultusername=Sandbox1"
dprintf "code ."