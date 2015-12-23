cd /tmp

# remove repo if it already exists
rm -rf nginx-node-docker-load-balancer
git clone https://github.com/johnmarinelli/nginx-node-docker-load-balancer
cd nginx-node-docker-load-balancer
npm install
nodejs .

whereis nodejs
nodejs -v

service nginx start
