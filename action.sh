branch=main
git clone -b $branch https://github.com/CipherX1-ops/PyroLynX /root/CipherX1-ops
cp lynx/.env /root/CipherX1-ops/.env
cd /root/CipherX1-ops
docker build . --rm --force-rm --compress --pull --file Dockerfile -t lynx
docker run --privileged --env-file .env --rm -i lynx 
