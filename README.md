# pip-issue8413
Small env to reproduce the pip issue https://github.com/pypa/pip/issues/8413

## How to reproduce the problem
Run the shell script `tests.sh`

### Notes
1. Uncomment the var NEW_RESOLVER in the shell script to activate the new resolver
1. Keep at least 10 iterations in the loop to be sure to reproduce the problem
1. The empty package `mylib` can be regenerated from its project.

Thanks a lot :)