rsync -rtvap --exclude .venv . jj@tv:/opt/snapraid-runner 
# uv tool install as root
sudo uv tool install .
/home/jj/.local/bin/snapraid-runner -c /media/red/p/code/snapraid/snapraid-runner.conf
/home/jj/.local/bin/snapraid-runner

cd /opt/snapraid-runner && /usr/local/bin/uv run snapraid-runner /media/red/p/code/snapraid/snapraid-runner.conf
