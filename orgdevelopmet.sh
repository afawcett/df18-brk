# Import auto pilot
source ./autopilot.sh

# Cleanup
rm -rf ./demo

# Demo script
dprintf "sfdx force:project:create --projectname demo --manifest"
dprintf "code ./demo"