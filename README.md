# Statika wrapped in Docker

To run:

```
docker run -t -i --rm \
	--env CONFIGURATION_URL=<s3-url> \
	--env SERVICES_URL=<s3-url> \
	--env REGION=<aws-region> \
	fractos/statika:latest
```

e.g.

```
docker run -t -i --rm \
	--env CONFIGURATION_URL=s3://mybucket/statika-conf.json \
	--env SERVICES_URL=s3://mybucket/statika-services.json \
	--env REGION=eu-west-1 \
	fractos/statika:latest
```

## Configuration file format

```
{
  "cluster": "<cluster-name>",
  "sleepTimeSeconds": <time-in-seconds>
}
```

## Services file format

```
[
  {
    "serviceName": "<ecs-service-name>",
    "exposedContainerName": "<container-name-to-balance>",
    "loadBalancerName": "<name-of-classic-load-balancer>"
  }
]
```

This is an array of JSON objects.

