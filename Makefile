MANUAL := SpaceCubics_OBC_Product_Manual_revx

all: ${MANUAL}.docx

${MANUAL}.docx: product_manual.org
	pandoc --reference-doc template/sc_pandoc_pm_reference.docx ./product_manual.org -o ${MANUAL}.docx

clean:
	${RM} *.docx *.pdf
