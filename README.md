# Openfire IM Server 4.6.0

Image based on **Linux Alpine** with **OpenJDK 8** and the latest stable version of **Openfire**.


# Getting started

Pull image in your host
```sh
# docker pull l1nh4r3s/srvopenfire
```
Or build your own image based in my dockerfile

```sh
# docker build -t l1nh4r3s/srvopenfire github.com/linhareslucas/srvopenfire
```
# Quickstart

Start Openfire in docker

```sh
# docker container run -d -p 9090:9090 -p 5222:5222 -p 7777:7777 l1nh4r3s/srvopenfire -v /your-localvolume/:/var/lib/openfire
```
Access your brownser http://localhost:9090/ and follow the setup procedure to complete the installation

# References

http://www.igniterealtime.org/projects/openfire/documentation.jsp

https://github.com/gizmotronic/docker-openfire

https://github.com/igniterealtime/Openfire

https://github.com/QuantumObject/docker-openfire
