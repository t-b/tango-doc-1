rm -f sphinx-output.log

sphinx-build -q -w sphinx-output.log ./source build

if [ -s "sphinx-output.log" ]
then
  echo "Errors building the documentation" 1>&2
  echo "sphinx-build says: "               1>&2
  cat sphinx-output.log                 1>&2
  exit 1
fi

# handle cases where we are called with plain sh
# which does not know about functions
exit 0