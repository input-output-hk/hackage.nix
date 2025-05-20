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
  "0.0.0.1" = {
    sha256 = "cb424d699f9cddc5b225796d304b9b529eaf39901b0cce18fc7519f9223026e4";
    revisions = {
      r0 = {
        nix = import ../hackage/align-audio-0.0.0.1-r0-4ab392c6b4822ad4e622b8827398373088db384c0f555203468cb8275a4913e1.nix;
        revNum = 0;
        sha256 = "4ab392c6b4822ad4e622b8827398373088db384c0f555203468cb8275a4913e1";
      };
      r1 = {
        nix = import ../hackage/align-audio-0.0.0.1-r1-1e463c1d8d6e70b6fefd600d2aafeb6a03af4ac2ad75e7767c349c0fadfa1db3.nix;
        revNum = 1;
        sha256 = "1e463c1d8d6e70b6fefd600d2aafeb6a03af4ac2ad75e7767c349c0fadfa1db3";
      };
      r2 = {
        nix = import ../hackage/align-audio-0.0.0.1-r2-89e68ad42bf6b6ae91f041320e37491f7b967d1e7cfa7d81b938a464b0b11896.nix;
        revNum = 2;
        sha256 = "89e68ad42bf6b6ae91f041320e37491f7b967d1e7cfa7d81b938a464b0b11896";
      };
      default = "r2";
    };
  };
}