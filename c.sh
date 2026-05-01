rsync -rtvap --exclude .venv . jj@tv:/opt/snapraid-runner 
# uv tool install as root
sudo uv tool install --reinstall .
/home/jj/.local/bin/snapraid-runner -c /media/red/p/code/snapraid/snapraid-runner.conf
/home/jj/.local/bin/snapraid-runner

cd /opt/snapraid-runner && /usr/local/bin/uv run snapraid-runner /media/red/p/code/snapraid/snapraid-runner.conf
sudo /root/.local/bin/snapraid-scrub -c  /media/red/p/code/snapraid/snapraid-runner.conf  --plan 8 --older-than 10
sudo pkill -9 snapraid
sudo rm /media/parity/snapraid.content.lock  