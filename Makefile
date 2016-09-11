all: informe

informe:
	pandoc --smart --template="static/style.latex" -s -o tmp.pdf -f markdown+multiline_tables+grid_tables "1. Introducción.md" "2. Justificación.md" "3. Descripción.md" "4. Desarrollo.md" "5. Ejecución.md" "6. Relación.md" "7. Conclusiones.md" "8. Referencias.md" "9. Anexos.md"
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default -dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages -dCompressFonts=true -r150 -sOutputFile=informe.pdf static/portada.pdf tmp.pdf
	rm tmp.pdf
