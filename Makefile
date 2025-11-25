BUILD = output

FN = resume_likangfeng
FD = `date +"%Y%m%d-%H%M%S"`
COMMIT_HASH = `git rev-parse --short HEAD`

CN_DOC = main.typ
EN_DOC = main.en.typ
JA_DOC = main.ja.typ

zh: prereq
	typst compile $(CN_DOC) $(BUILD)/$(FN)_$(FD)-$(COMMIT_HASH).zh.pdf 

en: prereq
	typst compile $(EN_DOC) $(BUILD)/$(FN)_$(FD)-$(COMMIT_HASH).en.pdf

ja: prereq
	typst compile $(JA_DOC) $(BUILD)/$(FN)_$(FD)-$(COMMIT_HASH).ja.pdf

all: clean prereq zh en ja 

prereq:
	@mkdir -pv $(BUILD)

clean:
	@rm -fr $(BUILD)
