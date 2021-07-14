# Python 3 bin path
export PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
# Path to sbin
export PATH="/usr/local/sbin:$PATH:$PYTHON_BIN_PATH"
# Conda path
export PATH="/usr/local/anaconda3/bin:$PATH"

# asdf
. /usr/local/opt/asdf/asdf.sh
