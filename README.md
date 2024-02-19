# Docker Installation

Docker is used for creating compute environments that exactly match where they were created.  This aleviates a lot of the hassle of running code written by others.

Follow [this link](#https://docs.docker.com/get-docker/) to install. <small>If link is outdated, search "How to install docker"</small>

This Docker image uses `port 8182` to operate.  If your port 8182 is in use, edit `/docker.sh` and `/Dockerfile` to any available port (example, `3002`)

<i>If you are not running an Apple Silicon machine (M-series), see line 6-9 of /docker.sh</i>

# Pipeline Installation

Create a Docker image to install dependencies with correct versions. Use the following commands in your terminal AT THIS DIRECTORY (`cd xx/xx/HIVIntact`).

```
sh docker.sh build
sh docker.sh start
```

Enter the docker container:

```
sh docker.sh bash
```

Now that you are in the Docker container, install the pipeline:

```
cd /app
virtualenv -p python3 env
env/bin/pip install .
source env/bin/activate
```

# Running instructions

1. Place your sequences at `/data/seqs.fasta`

1. `cd /app/data`

1. Run `proviral intact --subtype B seqs.fasta`

1. Output will be available in this directory

<small>Directory name + location can be changed</small>

## Inputs

Remove missing sequences (both "-" and "N") from sequences else this pipeline will error.

## Subtypes

View subtype options at `/util/subtype_alignments` for the `proviral intact --subtype ?` flag.