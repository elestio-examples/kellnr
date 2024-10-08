#set env vars
set -o allexport; source .env; set +o allexport;


cat <<EOT > ./servers.json
{
    "Servers": {
        "1": {
            "Name": "local",
            "Group": "Servers",
            "Host": "172.17.0.1",
            "Port": 11036,
            "MaintenanceDB": "kellnr",
            "SSLMode": "prefer",
            "Username": "kellnr",
            "PassFile": "/pgpass"
        }
    }
}
EOT
