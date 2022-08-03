{
  "0.1.0.0" = {
    sha256 = "86d5ba431e320deb6876e68a68f9b8f00d5bcc802405f5364c4d4733dff9ecf0";
    revisions = {
      r0 = {
        nix = import ../hackage/church-pair-0.1.0.0-r0-7e589430224556550ec159dc9f213569b7191138b7d59b87b502623f0f7cb238.nix;
        revNum = 0;
        sha256 = "7e589430224556550ec159dc9f213569b7191138b7d59b87b502623f0f7cb238";
        };
      r1 = {
        nix = import ../hackage/church-pair-0.1.0.0-r1-b7aa2c61bc4f5a6bfa79013153232501244ee3c73b2ed2ed39c78264ca334e14.nix;
        revNum = 1;
        sha256 = "b7aa2c61bc4f5a6bfa79013153232501244ee3c73b2ed2ed39c78264ca334e14";
        };
      default = "r1";
      };
    };
  "0.1.0.1" = {
    sha256 = "73b26ca07a185dea3e3edf93501c500a2709f84c9c14a85c6fd869af7f752bef";
    revisions = {
      r0 = {
        nix = import ../hackage/church-pair-0.1.0.1-r0-95c66dc969114d2ff6b3eeefb539ee35b5556c02f1151ef00bea809b6d9c5765.nix;
        revNum = 0;
        sha256 = "95c66dc969114d2ff6b3eeefb539ee35b5556c02f1151ef00bea809b6d9c5765";
        };
      default = "r0";
      };
    };
  }