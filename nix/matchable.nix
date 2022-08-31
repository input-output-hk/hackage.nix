{
  "0.1.1.1" = {
    sha256 = "a3d05aa632ca3aecdf036e762f688b1c754b656320e5f9a2791e92726f30a669";
    revisions = {
      r0 = {
        nix = import ../hackage/matchable-0.1.1.1-r0-1161847280aaa9c30fc825fd7b2e202c74def44b0ce7084ccb4ccd63b36f80c3.nix;
        revNum = 0;
        sha256 = "1161847280aaa9c30fc825fd7b2e202c74def44b0ce7084ccb4ccd63b36f80c3";
        };
      default = "r0";
      };
    };
  "0.1.2" = {
    sha256 = "2013552c4c8823b237043a0a3f6004fa1c6ccaf9750f1f51cd29378b6fc22b73";
    revisions = {
      r0 = {
        nix = import ../hackage/matchable-0.1.2-r0-05b2dfe06b61568e7223d579d106993b9765024f2cbf425cb475f175fe715923.nix;
        revNum = 0;
        sha256 = "05b2dfe06b61568e7223d579d106993b9765024f2cbf425cb475f175fe715923";
        };
      r1 = {
        nix = import ../hackage/matchable-0.1.2-r1-739fad3ca489937b5444f3e616a06f39a1a24265d84e23c131d4b2c8cd36f095.nix;
        revNum = 1;
        sha256 = "739fad3ca489937b5444f3e616a06f39a1a24265d84e23c131d4b2c8cd36f095";
        };
      r2 = {
        nix = import ../hackage/matchable-0.1.2-r2-cc8fc46bd98261229853aa75a4a7ee26bb4cbecd2dc23239fffbdf20176eaf5c.nix;
        revNum = 2;
        sha256 = "cc8fc46bd98261229853aa75a4a7ee26bb4cbecd2dc23239fffbdf20176eaf5c";
        };
      default = "r2";
      };
    };
  }