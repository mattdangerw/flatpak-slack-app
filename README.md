This repo contains a working version of the slack app packaged as a flatpak.
Unfortunately there is no redistribution rights for the slack binaries, so you
have to create your own to use it.

The package uses the freedesktop.org runtime, so you first need to install the
sdk (so you can build the bundled stuff) and the platform:
```
flatpak --user remote-add --from gnome https://sdk.gnome.org/gnome.flatpakrepo
flatpak --user install gnome org.freedesktop.Platform//1.4 org.freedesktop.Sdk//1.4
```


To test this, do:
```
make
flatpak --user remote-add --no-gpg-verify local-slack repo
flatpak --user install local-slack com.slack.Slack
```
