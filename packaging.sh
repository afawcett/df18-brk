# Import auto pilot
source ./autopilot.sh

# Cleanup
rm -rf ./dreamhouse-sfdx

# Demo script
dprintf "git clone https://github.com/dreamhouseapp/dreamhouse-sfdx"
dprintf "cd dreamhouse-sfdx"
dprintfake "sfdx force:package:create -n Dreamhouse -t Unlocked -r force-app"
echo sfdx-project.json has been updated.
echo Successfully created a package. 0HoB0000000KyjVKAS
echo === Ids
echo NAME        VALUE
echo ──────────  ──────────────────
echo Package Id  0HoB0000000KyjVKAS
dprintfake "sfdx force:package:version:create - Dreamhouse -k password123 -w 10"
echo sfdx-project.json has been updated.
echo Successfully created the package version [08cB0000000KyjLIAS]. Subscriber Package Version Id: 04tB0000000Y0DJIA0.
echo Package Installation URL: https://login.salesforce.com/packaging/installPackage.apexp?p0=04tB0000000Y0DJIA0
echo As an alternative, you can use the "sfdx force:package:install" command.
dprintfake "sfdx force:package:install --package Dreamhouse -u Sandbox -k password123 -w 10"
echo This package might send or receive data from these third-party websites:
echo 
echo api.metamind.io
echo api.lifx.com
echo dreamhouzz-push-server.herokuapp.com
echo hooks.slack.com
echo
echo Grant access y/n?: y
echo Successfully installed package [04t1I0000036seVQAQ]
dprintf "sfdx force:org:open -u Sandbox -p /lightning/setup/ImportedPackage/home"
cd ..