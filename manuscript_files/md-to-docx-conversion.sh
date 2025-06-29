md-to-docx-conversion.sh
#!/bin/bash

# Set template relative to current location
TEMPLATE_PATH="jtacs_template.docx"

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
    -o "$OUTPUT_PATH" \
    --reference-doc="$TEMPLATE_PATH" \
    --pdf-engine=pdflatex
done

echo "✅ All conversions complete!"