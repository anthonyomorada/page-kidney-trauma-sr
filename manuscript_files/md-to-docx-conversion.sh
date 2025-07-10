#!/bin/bash

# Set template relative to current location
TEMPLATE_PATH="jtacs_template.docx"
BIBLIO_PATH="page-kidney-trauma-sr.bib"        # 👈 your Zotero-exported .bib file
CSL_STYLE="ama.csl"                # 👈 optional: use a citation style file

# List of markdown files to convert
FILES=(
  "TPK_TitlePage.md"
  "TPK_Abstract.md"
  "TPK_Manuscript_Blinded.md"
  "TPK_CoverLetter.md"
)

# Loop through and convert each file
for FILE in "${FILES[@]}"
do
  INPUT_PATH="./${FILE}"
  OUTPUT_PATH="./${FILE%.md}.docx"
  echo "📄 Converting ${FILE} → ${OUTPUT_PATH}"

  pandoc "$INPUT_PATH" \
    -f markdown+tex_math_single_backslash \
    --citeproc \
    --bibliography="$BIBLIO_PATH" \
    --csl="$CSL_STYLE" \
    --reference-doc="$TEMPLATE_PATH" \
    -o "$OUTPUT_PATH"
done

echo "✅ All conversions complete with citations!"