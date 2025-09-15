# Lighter DEX Data Collector

A Docker-containerized Python script for collecting real-time trade and order book data from the Lighter DEX API and saving it to CSV files.

## Quick Start

### Docker (Recommended)
**Prerequisites**: Docker, Docker Compose

1.  **Start**: `docker-compose up -d`
2.  **View logs**: `docker-compose logs -f lighter-data-collector`
3.  **Stop**: `docker-compose down`

### Local Development
**Prerequisites**: Python 3.8+

1.  **Install dependencies**: `pip install -r requirements.txt`
2.  **Run script**: `python gather_lighter_data.py`

## Configuration

To change the tracked cryptocurrency pairs, edit the `CRYPTO_TICKERS` list in `gather_lighter_data.py`.

If using Docker, rebuild to apply changes: `docker-compose up --build -d`

## Project Structure & Output

The script automatically creates `lighter_data/` for CSV output and `logs/` for log files.

```
.
├── docker-compose.yml
├── Dockerfile
├── gather_lighter_data.py
├── requirements.txt
├── lighter_data/       # CSV output data
└── logs/               # Log files
```
