VERSION=2.4.2
DEBNAME=slack-desktop-$(VERSION)-amd64.deb
REPO ?= repo

all: data.tar.xz com.slack.Slack.json
	flatpak-builder --force-clean --repo=${REPO} ${EXPORT_ARGS} slack com.slack.Slack.json

$(DEBNAME):
	wget "https://downloads.slack-edge.com/linux_releases/$(DEBNAME)"

data.tar.xz: $(DEBNAME)
	ar x $(DEBNAME)
