{
  "2.0" = {
    sha256 = "7f835a046f6a6f4b868986c5c933bd5fa41ed25ce6ee9a3ea14e1224bce091a1";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-databrew-2.0-r0-4a5c843acdeea1d7526a84789d87c8bf91da4e2456b5f2c69993daaef1777bf3.nix;
        revNum = 0;
        sha256 = "4a5c843acdeea1d7526a84789d87c8bf91da4e2456b5f2c69993daaef1777bf3";
      };
      r1 = {
        nix = import ../hackage/amazonka-databrew-2.0-r1-95203cbbe8f7befefe163b727fd1a865282474058707a5e68af0b83c1abcb568.nix;
        revNum = 1;
        sha256 = "95203cbbe8f7befefe163b727fd1a865282474058707a5e68af0b83c1abcb568";
      };
      default = "r1";
    };
  };
}