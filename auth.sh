# Import auto pilot
source ./autopilot.sh

dprintf "sfdx force:auth:web:login --setalias DevHub --setdefaultdevhubusername"
dprintf "sfdx force:auth:web:login --setalias Production"
dprintf "sfdx force:auth:web:login --setalias Sandbox1 --instanceurl https://test.salesforce.com"
dprintf "sfdx force:auth:web:login --setalias Sandbox2 --instanceurl https://test.salesforce.com"