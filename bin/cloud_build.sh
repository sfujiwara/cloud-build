#!/bin/bash

PROJECT_ID="sfujiwara"

gcloud builds submit \
  --project "${PROJECT_ID}" \
  --async \
  --config cloudbuild.yaml
  