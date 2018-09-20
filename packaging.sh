# Import auto pilot
source ./autopilot.sh

# Cleanup
rm -rf ./dreamhouse-sfdx

# Demo script
dprintf "git clone https://github.com/dreamhouseapp/dreamhouse-sfdx"
dprintf "cd dreamhouse-sfdx"
dprintfake "sfdx force:package:create -n Dreamhouse -t Unlocked -r force-app"
sleep 2
echo sfdx-project.json has been updated.
echo Successfully created a package. 0HoB0000000KyjVKAS
echo === Ids
echo NAME        VALUE
echo ──────────  ──────────────────
echo Package Id  0HoB0000000KyjVKAS
dprintfake "sfdx force:package:version:create -n Dreamhouse -k password123 -w 10"
sleep 5
echo sfdx-project.json has been updated.
echo Successfully created the package version [08cB0000000KyjLIAS]. Subscriber Package Version Id: 04tB0000000Y0DJIA0.
echo Package Installation URL: https://login.salesforce.com/packaging/installPackage.apexp?p0=04tB0000000Y0DJIA0
echo As an alternative, you can use the "sfdx force:package:install" command.
dprintf "code ."
dprintfake "sfdx force:package:install --package Dreamhouse@1.0.0-1 -u Sandbox2 -k password123 -w 10"
sleep 2
echo This package might send or receive data from these third-party websites:
echo 
echo api.metamind.io
echo api.lifx.com
echo dreamhouzz-push-server.herokuapp.com
echo hooks.slack.com
echo
echo Grant access y/n?: y
sleep 5
echo Successfully installed package [04tB0000000Y0DJIA0]
dprintf "sfdx force:org:open -u Sandbox2 -p /lightning/setup/ImportedPackage/home"
cd ..