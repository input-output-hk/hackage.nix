{
  "2.0" = {
    sha256 = "8e6102b88f186f8bbecb1c9460ca069bf27366392d60c64fd9dcb1dafb036157";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-kafka-2.0-r0-657dbe6522695d16c9954ca4370d01b3a11981c8fc54fba8c7d79f5e987fdc0e.nix;
        revNum = 0;
        sha256 = "657dbe6522695d16c9954ca4370d01b3a11981c8fc54fba8c7d79f5e987fdc0e";
      };
      r1 = {
        nix = import ../hackage/amazonka-kafka-2.0-r1-6463cb8246ede06c88d238779f030893ad81bd3e5daaca962351cd3af22a2913.nix;
        revNum = 1;
        sha256 = "6463cb8246ede06c88d238779f030893ad81bd3e5daaca962351cd3af22a2913";
      };
      default = "r1";
    };
  };
}