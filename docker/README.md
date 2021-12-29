# Docker

Docker, a subset of the Moby project, is a software framework for building, running, and managing containers on servers and the cloud.

Containers often deliver both an application and configuration, meaning that a sysadmin doesn't have to spend as much time getting an application in a container to run compared to when an application is installed from a traditional source. Dockerhub and Quay.io are repositories offering images for use by container engines.

The greatest appeal of containers, though, is their ability to "die" gracefully and respawn when load balancing demands it. Whether a container's demise is caused by a crash or because it's simply no longer needed because server traffic is low, containers are "cheap" to start, and they're designed to seamlessly appear and disappear. Because containers are meant to be ephemeral and to spawn new instances as often as required, it's expected that monitoring and managing them is not done by a human in real time, but is instead automated.

## Images

**NOTE:**

In an ideal world, you have your own repository for Docker images. Your own images can be based off of existing images (parent image).

**Example:**

```yaml
# Dockerfile
FROM node:12-alpine
RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
```

Thousands of base/parent images can be leveraged / found on [Docker Hub](https://hub.docker.com/)

For instance: [Nodejs official image hub](https://hub.docker.com/_/node)

## Notes

When you need to spin up another technology without having it locally installed on your machine globally, spin it up in Docker.

For instance, say you need a Redis instance and a Postgres instance. Docker can help you spin up each of those containers for local development. When more formally introduced to a project, ideally these dependent technologies could be bundled together in a [Docker Compose](https://docs.docker.com/compose/) file.

Some of the more pronounced benefits of Docker or containerization technology in general is that it promotes consistency of environments and these instances are more or less sandboxed improving the security function of a given application and/or technology.

## Resources

- [Awesome Docker](https://github.com/veggiemonk/awesome-docker)
- [Docker Reference](https://docs.docker.com/reference/)
