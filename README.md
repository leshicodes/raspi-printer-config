# Raspberry Pi CUPS Print Server

A Docker-based CUPS print server with AirPrint support for Raspberry Pi.

## Requirements

- Docker and Docker Compose
- USB printer connected to the Pi

## Setup

1. Copy the example environment file and configure it:
   ```bash
   cp .env.example .env
   ```

2. Edit `.env` with your values. Ensure `TZ` is set to a valid timezone (e.g., `America/New_York`).

3. Start the container:
   ```bash
   docker compose up -d
   ```

4. Access the CUPS web interface at `https://<pi-ip>:631`

## Logs

```bash
docker compose logs -f
```

## Notes

- Uses host networking for mDNS/AirPrint discovery
- Printer config persists in `~/cups`