# Import auto pilot
source ./autopilot.sh

# Cleanup
rm -rf ./dreamhouse-sfdx

# Demo script
dprintf "sfdx force:project:create --projectname dreamhouse-sfdx --manifest"
dprintf "code ./dreamhouse-sfdx"