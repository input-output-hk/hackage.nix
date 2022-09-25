{
  "0.1.0.0" = {
    sha256 = "69738fcfdfa703e36fa3e2eb32c43c3d539d2d8515d8f25ccc8d21f82fbafd19";
    revisions = {
      r0 = {
        nix = import ../hackage/toml-reader-0.1.0.0-r0-66e2b4261739559e6d1be50391af7038610c3898bc748ce7985c4e4037b623ea.nix;
        revNum = 0;
        sha256 = "66e2b4261739559e6d1be50391af7038610c3898bc748ce7985c4e4037b623ea";
        };
      r1 = {
        nix = import ../hackage/toml-reader-0.1.0.0-r1-39b974192c6dc7afc58edabdc46f4f60044172d1df15bd3b190ab1f357a00e9b.nix;
        revNum = 1;
        sha256 = "39b974192c6dc7afc58edabdc46f4f60044172d1df15bd3b190ab1f357a00e9b";
        };
      r2 = {
        nix = import ../hackage/toml-reader-0.1.0.0-r2-cfbbf486b7cc06f1d799779daf8b6d5e791638df20c1787c0433c76105b3403d.nix;
        revNum = 2;
        sha256 = "cfbbf486b7cc06f1d799779daf8b6d5e791638df20c1787c0433c76105b3403d";
        };
      default = "r2";
      };
    };
  }