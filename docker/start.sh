# Activate the Virtualenv environment
source /home/ds-py3/bin/activate
alias python="/home/ds-py3/bin/python3"

git config --global user.name $GIT_USER_NAME
git config --global user.email $GIT_USER_MAIL


# Print information
echo ""
echo ""
echo "To get Fish and OMF, run ..."
echo "-----------------------------------------------------------------"
echo "curl -sSL https://oh-my.fish | fish"
echo "omf install agnoster"
echo ""
echo "To get the Cookiecutter, run ..."
echo "-----------------------------------------------------------------"
echo "git clone https://github.com/dushyantkhosla/ds-template-01.git"
echo ""
echo "To start a Jupyter notebook server, run ..."
echo "-----------------------------------------------------------------"
echo "jupyter notebook --allow-root --no-browser --ip 0.0.0.0 --NotebookApp.token='cpi' --port 8000"
echo ""
echo "Configure git. Run ..."
echo "-----------------------------------------------------------------"
echo "git config --global user.email 'you@example.com'"
echo "git config --global user.name 'Your Name'"
echo ""
echo "If you're running this container inside the ocean, run this to access git repo's"
echo "---------------------------------------------------------------------------------"
echo "git config --global http.proxy http://squid.service.pmicicd.ocean:3128"
echo ""
echo "If you're running this container inside the ocean, run this to be able to install new PIP libraries"
echo "---------------------------------------------------------------------------------------------------"
echo "cp /root/pip.conf /etc/pip.conf"
echo ""
echo ""