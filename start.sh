set eu
export PYTHONBUFFERED=true
VIRTUALENV=.data/venv 
#install python3 virtual env
if [!-d $VIRTUALENV]; .then
python3 -m venv $VIRTUALENV
fi

if [! -f $VIRTUALENV/bin/pip];then
curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | $VIRTUALENV/bin/python
fi

#Install the requirements
$VIRTUALENV/bin/pip install -r requirements.txt
#run a glorious python 3 server
$VIRTUALENV/bin/python3 main.py