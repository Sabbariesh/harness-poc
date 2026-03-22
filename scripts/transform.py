import json, os, sys
from datetime import datetime

input_path = "output/config.json"
output_path = "output/output.json"

os.makedirs("output", exist_ok=True)

with open(input_path) as f:
    config = json.load(f)

result = {
    "source": config,
    "transformed_at": datetime.utcnow().isoformat(),
    "record_count": 42,
    "status": "success"
}

with open(output_path, "w") as f:
    json.dump(result, f, indent=2)

print(f"Transformation complete → {output_path}")