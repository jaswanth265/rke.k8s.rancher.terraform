$Env:AWS_ACCESS_KEY_ID="accesskey"
$Env:AWS_SECRET_ACCESS_KEY="secretkey"

1. Create a load aws network load balancer and TG.
2. Create 3 machines and give the following in the userdata.
#!/bin/bash
sudo curl https://get.docker.com | bash
sudo usermod -a -G docker ubuntu
sudo usermod -a -G root ubuntu
sudo systemctl daemon-reload
sudo systemctl restart docker
sudo reboot
3. Replace the loadbalancer and dns name under authentication below.
4. Replace all the Public IPs with the servers you have created.
5. Create additional 3 more nodes to add them as workers.
6. Make sure you also add additional domain names if needed under authentication
7. Adding additonal nodes and peforming rke.exe up --update-only , will not impact any apps.

time="2023-03-04T10:53:41+05:30" level=fatal msg="Unsupported Docker version found [23.0.1] on host [44.212.75.32], supported versions are [1.13.x 17.03.x 17.06.x 17.09.x 18.06.x 18.09.x 19.03.x 20.10.x]"


rke.exe up --config .\rke-cluster.yml --ignore-docker-version

rke.exe up --update-only --config .\rke-cluster.yml --ignore-docker-version

rke remove  --ignore-docker-version