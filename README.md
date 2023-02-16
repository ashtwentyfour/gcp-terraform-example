# IaC Example - Terraform to provision GCP resources 

* The scripts in this repository provision an [Artifact Repository](https://cloud.google.com/artifact-registry/docs/repositories) on GCP
* The scripts rely on a remote [Cloud Storage Bucket to store the state file](https://cloud.google.com/docs/terraform/resource-management/store-state)
* Update the ensure a bucket has been provisioned and that the bucket name/ID has been updated in the ```tf/backend.tf``` file
* Ensure that the service account being used to provision the resources has the right permissions to access the bucket as described [here](https://gitlab.com/gitlab-org/gitlab-orchestrator/-/blob/18b59d594acea557c66cb17bb951c2b1c65105eb/doc/quickstart.md#software-requirements)
* The contents of the JSON key-file for the service account should be base64 encrypted and the encrypted string must be added to the pipeline variables as ```GOOGLE_CREDENTIALS_B64```