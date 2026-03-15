kind: manual

sources:
- kind: zip
  base-dir: ""
  (?):
  - arch == "x86_64":
      url: onepassword_cli:v2.32.1/op_linux_amd64_v2.32.1.zip
      ref: 64a49db2d1b0333f3bee88546e3e84995e530e25f2c783fb5d4081d01a05b2a1
  - arch == "aarch64":
      url: onepassword_cli:v2.32.1/op_linux_arm64_v2.32.1.zip
      ref: cf6d114b12079ba5ac4f3ea6c69d331c06565c361aeae77f8c20868bd94c9885

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

config:
  install-commands:
  - |
    install -Dm755 -t "%{install-root}%{bindir}" op
  - |
    %{install-extra}
