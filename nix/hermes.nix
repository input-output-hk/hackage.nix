{
  "1.3.4.3" = {
    sha256 = "af58eaa789d4c9cab9c57d722671e616afc68c26ccfbd8a4fbfebe764d0ad94f";
    revisions = {
      r0 = {
        nix = import ../hackage/hermes-1.3.4.3-r0-b4ffab0f081328120c39c59f120ce9bc0b3830b7b8ee242fba9e9cc1fa2eb080.nix;
        revNum = 0;
        sha256 = "b4ffab0f081328120c39c59f120ce9bc0b3830b7b8ee242fba9e9cc1fa2eb080";
      };
      r1 = {
        nix = import ../hackage/hermes-1.3.4.3-r1-c3de8191d5c73ac147bd6172da28bdfddf7d559a98447097e37f0a99a8cb5514.nix;
        revNum = 1;
        sha256 = "c3de8191d5c73ac147bd6172da28bdfddf7d559a98447097e37f0a99a8cb5514";
      };
      default = "r1";
    };
  };
}