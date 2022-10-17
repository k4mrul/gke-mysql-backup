# gke-mysql-backup

### Create google sa secret like this

```
apiVersion: v1
kind: Secret
metadata:
  name: gcs-key
  namespace: default
type: Opaque
stringData:
  gcp_service_account.json: |
    {
      DOWNLOADED_GCP_SERVICE_ACCOUNT_JSON_HERE
    }
```

Apply the sa

### Apply cron.yaml (modify as needed)