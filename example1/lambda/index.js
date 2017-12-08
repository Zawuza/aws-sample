var exec = require('child_process').exec;
exports.handler = function(event, context) {
  child = exec("./hello", function(error) {
    // Resolve with result of process
    context.done(error, 'Process complete!');
  });
  // Log process stdout and stderr
  child.stdout.on('data', console.log);
  child.stderr.on('data', console.error);
};