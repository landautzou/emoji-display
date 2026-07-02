# stop if any command fails
$ErrorActionPreference = "Stop"
 
# create venv if it doesn't exist
if (!(Test-Path "emoji_env")) {
  py -3.12 -m venv emoji_env
}
 
# activate venv
& ".\emoji_env\Scripts\Activate.ps1"
 
# upgrade pip (optional)
python -m pip install --upgrade pip
 
# install dependencies
python -m pip install -r .\requirements.txt
 
# run application
python emoji_reactor.py