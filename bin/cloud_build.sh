#!/bin/bash

PROJECT_ID="sfujiwara"

gcloud builds submit \
  --project "${PROJECT_ID}" \
  --async \
  --config cloudbuild.yaml \
  --gcs-log-dir "gs://${PROJECT_ID}-cloudbuild/logs" \
  --gcs-source-staging-dir "gs://${PROJECT_ID}-cloudbuild/staging"