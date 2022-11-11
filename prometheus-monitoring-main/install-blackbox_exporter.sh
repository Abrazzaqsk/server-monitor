sudo useradd --no-create-home blackbox_exporter

wget https://github.com/prometheus/blackbox_exporter/releases/download/v0.22.0/blackbox_exporter-0.22.0.linux-amd64.tar.gz
tar xzf blackbox_exporter-0.22.0.linux-amd64.tar.gz
sudo cp blackbox_exporter-0.22.0.linux-amd64/blackbox_exporter /usr/local/bin/blackbox_exporter
rm -rf nblackbox_exporter-0.22.0.linux-amd64.tar.gz blackbox_exporter-0.22.0.linux-amd64

sudo cp blackbox_exporter.service /etc/systemd/system/blackbox_exporter

sudo systemctl daemon-reload
sudo systemctl enable blackbox_exporter
sudo systemctl start blackbox_exporter
sudo systemctl status blackbox_exporter



