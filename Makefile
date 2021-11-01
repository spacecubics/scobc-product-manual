SpaceCubics_OBC_Product_Manual_revx.docx: product_manual.org
	pandoc --reference-doc template/sc_pandoc_pm_reference.docx ./product_manual.org -o SpaceCubics_OBC_Product_Manual_revx.docx

clean:
	rm -f SpaceCubics_OBC_Product_Manual_revx.docx SpaceCubics_OBC_Product_Manual_revx.pdf
