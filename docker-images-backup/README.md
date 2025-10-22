# Docker Images Backup

This directory contains saved Docker images as backup files.

## Recent Backups
- `mlops-day8-app_20251022_053102.tar.gz` - Created Wed Oct 22 05:31:43 UTC 2025

## Usage
To load a backup image:

```bash
docker load -i mlops-day8-app_20251022_053102.tar.gz
docker images  # Verify image is loaded
docker run -d -p 5000:5000 mlops-day8-app:latest
```

## Management
- Regularly clean up old backups
- Keep only significant versions
- Compressed with gzip for space efficiency
