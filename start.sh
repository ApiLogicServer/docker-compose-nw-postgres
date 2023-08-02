echo "\n\n**********************"
pwd
echo "************************\n\n"

cd /app
/usr/local/bin/gunicorn --reload --workers 2 --worker-connections 2 --access-logfile=- --pythonpath . -b :5000 api_logic_server_run:flask_app

