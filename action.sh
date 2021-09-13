branch=main
git clone -b $branch https://github.com/ToxygenX/PyroLynX /root/ToxygenX
cp lynx/.env /root/ToxygenX/.env
cd /root/ToxygenX
docker build . --rm --force-rm --compress --pull --file Dockerfile -t lynx
docker run --privileged --env-file .env --rm -i lynx 
