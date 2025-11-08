{
  "1.0.0" = {
    sha256 = "864c22c1ff9cd7933ef909c47d0d135c6da0038b4b1553bdbb63a5d8a8c23f1d";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-appstream-1.0.0-r0-ca0a64997d29c6ca19f25e2d5d75c850dc710521fb1b491dd03a662976cc836d.nix;
        revNum = 0;
        sha256 = "ca0a64997d29c6ca19f25e2d5d75c850dc710521fb1b491dd03a662976cc836d";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "971cb8206d7ebf467b7728e624df2bc0b49a15b7a4b7efece2ea4e76583ea4fb";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-appstream-1.0.1-r0-249dc899f381453c33b402f959bf62a4996607fcc97787b64199776e0a99d868.nix;
        revNum = 0;
        sha256 = "249dc899f381453c33b402f959bf62a4996607fcc97787b64199776e0a99d868";
      };
      default = "r0";
    };
  };
}