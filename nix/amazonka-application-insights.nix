{
  "2.0" = {
    sha256 = "3d7878c8e51a4bf2161894bddc910c47ecdba5e4d2d933cd659cb5eee03510a5";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-application-insights-2.0-r0-0507627c79f12ebf5b5080ce6f45013e2248dffd1e5128d4049b47c71056a246.nix;
        revNum = 0;
        sha256 = "0507627c79f12ebf5b5080ce6f45013e2248dffd1e5128d4049b47c71056a246";
      };
      r1 = {
        nix = import ../hackage/amazonka-application-insights-2.0-r1-81f5b79f97f3f68667982758e294266483b576c5a85e3bf7eee686ced461dcfb.nix;
        revNum = 1;
        sha256 = "81f5b79f97f3f68667982758e294266483b576c5a85e3bf7eee686ced461dcfb";
      };
      default = "r1";
    };
  };
}