# pip-issue8413
Small env to reproduce the pip issue https://github.com/pypa/pip/issues/8413

## How to reproduce the problem
1. Create the wheel of the package mylib (only the wheel), the wheel should be generated to mylib/dist
2. Run the shell script `tests.sh`

### Notes
- Uncomment the var NEW_RESOLVER in the shell script to activate the new resolver
- Keep at least 10 iterations in the loop to be sure to reproduce the problem

Thanks a lot :)