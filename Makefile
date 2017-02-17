REPO ?= repo

all: com.slack.Slack.json
	flatpak-builder --force-clean  --ccache --require-changes --repo=${REPO} ${EXPORT_ARGS} slack com.slack.Slack.json
	flatpak build-update-repo ${EXPORT_ARGS} ${REPO}
