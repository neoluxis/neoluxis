BUILD = output

FN = `date --iso-8601=seconds`
COMMIT_HASH = `git rev-parse --short HEAD`

CN_DOC = main.typ
EN_DOC = main.en.typ
JA_DOC = main.ja.typ

zh: prereq
	typst compile $(CN_DOC) $(BUILD)/resume-$(FN)-$(COMMIT_HASH).zh.pdf 

en: prereq
	typst compile $(EN_DOC) $(BUILD)/resume-$(FN)-$(COMMIT_HASH).en.pdf 

ja: prereq
	typst compile $(JA_DOC) $(BUILD)/resume-$(FN)-$(COMMIT_HASH).ja.pdf 

all: clean prereq zh en ja 

prereq:
	@mkdir -pv $(BUILD)

clean:
	@rm -fr $(BUILD)
