#!/usr/bin/env python3
"""Render one specimen sheet so we can see which font spec actually goes bold.
   python3 font-test.py   ->  font-test.png
"""
import os, subprocess, tempfile

SAMPLE = "Wardley Mapping: How to Cheat"
CASES = [
    ("family as-is, weight 400",        "'Shree Devanagari 714'",       "400", ""),
    ("family as-is, weight 700",        "'Shree Devanagari 714'",       "700", ""),
    ("family + Bold in the name",       "'Shree Devanagari 714 Bold'",  "400", ""),
    ("PostScript name",                 "'ShreeDev714-Bold'",           "400", ""),
    ("weight 700 + synthetic stroke",   "'Shree Devanagari 714'",       "700",
                                        "-webkit-text-stroke:1.1px currentColor"),
    ("Helvetica Neue 700 (reference)",  "'Helvetica Neue'",             "700", ""),
]

rows = "".join(
    f'<div class="row"><div class="lab">{n}</div>'
    f'<div class="s" style="font-family:{f};font-weight:{w};{x}">{SAMPLE}</div></div>'
    for n, f, w, x in CASES)

html = f"""<!doctype html><html><head><meta charset="utf-8"><style>
 *{{margin:0;padding:0;box-sizing:border-box}}
 body{{width:1200px;background:linear-gradient(180deg,#0c0d58,#242495);
   color:#fff;padding:44px 54px;-webkit-font-smoothing:antialiased;
   font-family:'Helvetica Neue',Arial,sans-serif}}
 .row{{margin-bottom:30px}}
 .lab{{font-size:15px;letter-spacing:.14em;text-transform:uppercase;
   color:rgba(198,194,255,.75);margin-bottom:8px}}
 .s{{font-size:56px;letter-spacing:-.02em;line-height:1.1}}
</style></head><body>{rows}</body></html>"""

t = tempfile.NamedTemporaryFile("w", suffix=".html", delete=False, encoding="utf-8")
t.write(html); t.close()
chrome = os.environ.get("CHROME") or "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
out = os.path.join(os.path.dirname(os.path.abspath(__file__)), "font-test.png")
subprocess.run([chrome, "--headless=new", "--disable-gpu", "--hide-scrollbars",
                "--force-device-scale-factor=2", "--virtual-time-budget=4000",
                "--window-size=1200,700", "--screenshot=" + out, "file://" + t.name])
os.unlink(t.name)
print("wrote", out)
