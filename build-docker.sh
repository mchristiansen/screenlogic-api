#!/bin/bash
IMAGENAME='screenlogic-api'
SHORTGITHASH=$(git rev-parse --short HEAD)
docker build -t repo.treescale.com/mchristiansen/screenlogic-api:latest .
docker tag repo.treescale.com/mchristiansen/screenlogic-api:latest repo.treescale.com/mchristiansen/screenlogic-api:$SHORTGITHASH
docker push repo.treescale.com/mchristiansen/screenlogic-api:latest
docker push repo.treescale.com/mchristiansen/screenlogic-api:$SHORTGITHASH
