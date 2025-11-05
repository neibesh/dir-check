# Directory Check

Small utility container that validates the availability of a directory prior to starting up

## Usage

docker-compose.yml

```yaml
depending-service:
  depends_on:
    dir-check:
      condition: service_completed_successfully

dir-check:
  image: check-dir:latest
  volumes:
    - /host/path/parent/to/library:/mnt
  command: ["/mnt/library", "30"]
```
