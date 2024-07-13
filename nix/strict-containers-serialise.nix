{
  "0.1" = {
    sha256 = "a391c5b4a9584ee97056c2a0181dd9e59fcf43c95efe6907ba2f6bae405a1a9e";
    revisions = {
      r0 = {
        nix = import ../hackage/strict-containers-serialise-0.1-r0-c57a761673f6d8bd73b425ed7229bba81a30a98a9ceca48520f4ade460205199.nix;
        revNum = 0;
        sha256 = "c57a761673f6d8bd73b425ed7229bba81a30a98a9ceca48520f4ade460205199";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "138e0a3bc2b1abc5b86db5860e0066e679433561ca3982c44f03b7d837bbc083";
    revisions = {
      r0 = {
        nix = import ../hackage/strict-containers-serialise-0.2-r0-484a18d9e1ff48f89af9e267b0c34aba7642426e07ffcf10ebaf1d4f6accb100.nix;
        revNum = 0;
        sha256 = "484a18d9e1ff48f89af9e267b0c34aba7642426e07ffcf10ebaf1d4f6accb100";
      };
      r1 = {
        nix = import ../hackage/strict-containers-serialise-0.2-r1-be45c2be2e1e39bb0d6b52644549c298ecfa092f605ff40dc23db9efa1529326.nix;
        revNum = 1;
        sha256 = "be45c2be2e1e39bb0d6b52644549c298ecfa092f605ff40dc23db9efa1529326";
      };
      default = "r1";
    };
  };
}