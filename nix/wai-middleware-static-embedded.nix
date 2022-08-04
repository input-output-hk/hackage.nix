{
  "0.1.0.0" = {
    sha256 = "de2c6a0a5174cec2f385080a734f0826aa6d1c4cd761f0c5df789eeb492816ad";
    revisions = {
      r0 = {
        nix = import ../hackage/wai-middleware-static-embedded-0.1.0.0-r0-db0b8938663e91e631f8ce79571d14522db7af03f58245fffba769995bb90fb5.nix;
        revNum = 0;
        sha256 = "db0b8938663e91e631f8ce79571d14522db7af03f58245fffba769995bb90fb5";
        };
      r1 = {
        nix = import ../hackage/wai-middleware-static-embedded-0.1.0.0-r1-036b7823a5e69452d1fe1e270ef3d4988063caa5bb00b6dfc356e1c21b7433e3.nix;
        revNum = 1;
        sha256 = "036b7823a5e69452d1fe1e270ef3d4988063caa5bb00b6dfc356e1c21b7433e3";
        };
      default = "r1";
      };
    };
  }