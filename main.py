from google.cloud.devtools import cloudbuild_v1

project_id = "xxx"
build = {
    "steps": [
        {
            "name": 'gcr.io/cloud-builders/gcloud',
            "args": ["config", "list"],
        }
    ]
}
client = cloudbuild_v1.CloudBuildClient()

# v1.1.0
# response = client.create_build(project_id=project_id, build=build)

# v2.0.0
response = client.create_build(project_id, cloudbuild_v1.Build(build))
