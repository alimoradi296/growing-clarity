#!/usr/bin/env python3
"""Basic checks for the sample interactive HTML guide."""
from __future__ import annotations

import re
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
HTML = ROOT / "examples" / "interactive-html" / "sample-learning-guide.html"


def main() -> None:
    text = HTML.read_text(encoding="utf-8")
    ids = re.findall(r'id="([^"]+)"', text)
    if len(ids) != len(set(ids)):
        raise SystemExit(f"duplicate ids: {ids}")
    match = re.search(r"<script>(.*)</script>", text, re.S)
    if not match:
        raise SystemExit("missing script block")
    with tempfile.NamedTemporaryFile("w", suffix=".js", delete=False) as handle:
        handle.write(match.group(1))
        path = handle.name
    result = subprocess.run(["node", "--check", path], capture_output=True, text=True)
    if result.returncode != 0:
        raise SystemExit(result.stderr or "javascript syntax error")
    print("example checks passed")


if __name__ == "__main__":
    main()
