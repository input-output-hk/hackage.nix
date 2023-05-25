{
  "0.0" = {
    sha256 = "ea403f7c7c666d302c3e82aedbb80634cebc6f10b4e815ff261fb0f95dc14769";
    revisions = {
      r0 = {
        nix = import ../hackage/align-audio-0.0-r0-8cea63e28e8eceea2bf18f3368ebe9164947931b3b502d68f2de1b900f3aeebe.nix;
        revNum = 0;
        sha256 = "8cea63e28e8eceea2bf18f3368ebe9164947931b3b502d68f2de1b900f3aeebe";
        };
      r1 = {
        nix = import ../hackage/align-audio-0.0-r1-d660b701835ffffe1b77decbfb1418d8272fcc3c0456fe3ec03653e5ecda2995.nix;
        revNum = 1;
        sha256 = "d660b701835ffffe1b77decbfb1418d8272fcc3c0456fe3ec03653e5ecda2995";
        };
      r2 = {
        nix = import ../hackage/align-audio-0.0-r2-1a046b8a5ab493124aaf3b2ab595029776d6c916eb6cb7dcf77439be36d24588.nix;
        revNum = 2;
        sha256 = "1a046b8a5ab493124aaf3b2ab595029776d6c916eb6cb7dcf77439be36d24588";
        };
      default = "r2";
      };
    };
  }