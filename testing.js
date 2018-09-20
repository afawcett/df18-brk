const fs = require('fs');
const path = require('path');
const os = require('os');

// This script deletes the test run temp files:
// test-result-XXX-junit.xml
// test-result-XXX.json
// test-result.txt
// test-run-id.txt

const tmpDir = os.tmpdir();

fs.readdir(tmpDir, function(err, files) {
  for (let i = 0; i < files.length; i++) {
    const file = files[i];
    if (file.indexOf('test-result') === 0 || file === 'test-run-id.txt') {
      const fullPath = path.join(tmpDir, file);
      fs.unlinkSync(fullPath);
    }
  }
});
