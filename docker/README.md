Docker setup
============

Steps
1. Customise the `minion` file
2. Build the container
3. Run the container
4. Enjoy !


Building the container:
---

`docker build -t saltmachine .`

Running the container:
---

`docker run saltmachine`

Enjoying
---

Your new container is now running, and you can SSH into it. To get it's IP address:

```bash
docker ps
docker inspect cheezy_container | grep IP
ssh root@172.17.0.X
```
