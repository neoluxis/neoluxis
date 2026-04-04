BUILD = output

FN = resume_likangfeng
FD = `date +"%Y%m%d-%H%M%S"`
COMMIT_HASH = `git rev-parse --short HEAD`

CN_DOC = main.typ
EN_DOC = main.en.typ
JA_DOC = main.ja.typ
NEW_DOC = new.typ
ALGO_DOC = 算法.typ
EMBED_DOC = 嵌入式.typ
ROBOT_DOC = 机器人.typ

new: prereq
# 	typst compile $(NEW_DOC) $(BUILD)/$(FN)_$(FD)-$(COMMIT_HASH)_simple.pdf

algo: prereq
	typst compile $(ALGO_DOC) $(BUILD)/$(FN)_$(FD)-$(COMMIT_HASH)_algo.pdf

embed: prereq
	typst compile $(EMBED_DOC) $(BUILD)/$(FN)_$(FD)-$(COMMIT_HASH)_embedded.pdf

robot: prereq
	typst compile $(ROBOT_DOC) $(BUILD)/$(FN)_$(FD)-$(COMMIT_HASH)_robot.pdf

zh: prereq
# 	typst compile $(CN_DOC) $(BUILD)/$(FN)_$(FD)-$(COMMIT_HASH).zh.pdf 

en: prereq
# 	typst compile $(EN_DOC) $(BUILD)/$(FN)_$(FD)-$(COMMIT_HASH).en.pdf

ja: prereq
# 	typst compile $(JA_DOC) $(BUILD)/$(FN)_$(FD)-$(COMMIT_HASH).ja.pdf

all: clean prereq zh en ja new algo embed robot

prereq:
	@mkdir -pv $(BUILD)

clean:
	@rm -fr $(BUILD)
