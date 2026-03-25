#!/bin/bash
# Generates all-transcripts-high-variance.md from all podcast transcripts.
# Run before or alongside `jekyll build`.

OUTPUT="all-transcripts-high-variance.md"

# --- Header ---
cat > "$OUTPUT" << 'HEADER'
# High Variance – All Transcripts

This file contains all transcripts from the High Variance podcast. Paste it into your LLM of choice to ask questions across episodes, search for themes, or explore what guests had to say.

High Variance is an interview podcast about a world that has become harder to read — more uncertain, more volatile, stranger. Host Danny Buerkli speaks with public intellectuals, entrepreneurs, and technologists to ask what is going on and how we should respond.

- [Apple Podcasts](https://podcasts.apple.com/us/podcast/high-variance-with-danny-buerkli/id1839231559)
- [Spotify](https://open.spotify.com/show/19vjjI6amjfur4u0i6UeLh?si=9c6f274910aa43fe)

## About the host

HEADER

# Pull bio from about page (strip front matter)
awk 'BEGIN{n=0} /^---$/{n++; next} n>=2' _pages/about.md >> "$OUTPUT"

echo "" >> "$OUTPUT"
echo "## Table of contents" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# --- Table of contents ---
for file in $(ls -r _podcasts/*.md); do
  title=$(sed -n 's/^title: "\(.*\)"/\1/p' "$file")
  date=$(sed -n 's/^date: \(.*\)/\1/p' "$file")
  blurb=$(sed -n 's/^blurb: "\(.*\)"/\1/p' "$file")
  echo "- **$title** ($date): $blurb" >> "$OUTPUT"
done

echo "" >> "$OUTPUT"
echo "---" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# --- Episodes ---
for file in $(ls -r _podcasts/*.md); do
  title=$(sed -n 's/^title: "\(.*\)"/\1/p' "$file")
  date=$(sed -n 's/^date: \(.*\)/\1/p' "$file")
  apple=$(sed -n 's/^apple_url: "\(.*\)"/\1/p' "$file")
  spotify=$(sed -n 's/^spotify_url: "\(.*\)"/\1/p' "$file")
  blurb=$(sed -n 's/^blurb: "\(.*\)"/\1/p' "$file")

  echo "## $title" >> "$OUTPUT"
  echo "" >> "$OUTPUT"
  echo "$date | [Apple Podcasts]($apple) | [Spotify]($spotify)" >> "$OUTPUT"
  echo "" >> "$OUTPUT"
  echo "$blurb" >> "$OUTPUT"
  echo "" >> "$OUTPUT"

  # Transcript body (everything after the second ---)
  awk 'BEGIN{n=0} /^---$/{n++; next} n>=2' "$file" >> "$OUTPUT"

  echo "" >> "$OUTPUT"
  echo "---" >> "$OUTPUT"
  echo "" >> "$OUTPUT"
done

echo "Built $OUTPUT"
