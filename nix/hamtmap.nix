{
  "0.2" = {
    sha256 = "42ca0698c5322d62e191279e1f0bbf7589c76c29176a18197db4571766c14ce0";
    revisions = {
      r0 = {
        nix = import ../hackage/hamtmap-0.2-r0-ef2987951aae0f3617ba0f85bf3539365f74179966b2d10a05a7a8851bd5bfd4.nix;
        revNum = 0;
        sha256 = "ef2987951aae0f3617ba0f85bf3539365f74179966b2d10a05a7a8851bd5bfd4";
        };
      r1 = {
        nix = import ../hackage/hamtmap-0.2-r1-dee2ff978f5ecfae887d0fceaa695bc0389a214601d6dae107fd4f1c42fadf08.nix;
        revNum = 1;
        sha256 = "dee2ff978f5ecfae887d0fceaa695bc0389a214601d6dae107fd4f1c42fadf08";
        };
      default = "r1";
      };
    };
  "0.3" = {
    sha256 = "d4d107ece7ffa69528a720763a0741dcab4773646df974596220d745250fd911";
    revisions = {
      r0 = {
        nix = import ../hackage/hamtmap-0.3-r0-d548024c3805b8c47c887a0b84c0a862edef5cfaf52db6ebaf30c4fbcad0b64d.nix;
        revNum = 0;
        sha256 = "d548024c3805b8c47c887a0b84c0a862edef5cfaf52db6ebaf30c4fbcad0b64d";
        };
      r1 = {
        nix = import ../hackage/hamtmap-0.3-r1-bbdcebe83e12f704a0b6611b1a9e7aa22db20023c6e3d44505617410f53733b6.nix;
        revNum = 1;
        sha256 = "bbdcebe83e12f704a0b6611b1a9e7aa22db20023c6e3d44505617410f53733b6";
        };
      default = "r1";
      };
    };
  }