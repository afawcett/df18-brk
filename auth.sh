# Import auto pilot
source ./autopilot.sh

dprintf "sfdx force:auth:web:login --setalias DevHub --setdefaultdevhubusername"
dprintf "sfdx force:auth:web:login --setalias Production"
dprintf "sfdx force:auth:web:login --setalias Sandbox --instanceurl https://test.salesforce.com"