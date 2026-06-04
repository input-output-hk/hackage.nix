{
  "0.1.0.0" = {
    sha256 = "9f96f82c687842f01bc804e7f7db1e834d297113fc3ca30554195ad88d72ca26";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-build-stats-0.1.0.0-r0-d758d928b923718b484749b38f2ecd34e23b1f1379fe0c3926d80c439d8709f9.nix;
        revNum = 0;
        sha256 = "d758d928b923718b484749b38f2ecd34e23b1f1379fe0c3926d80c439d8709f9";
      };
      r1 = {
        nix = import ../hackage/ghc-build-stats-0.1.0.0-r1-4c0b4b9d6d957eceaaa76a213ece3d2fc45c7c611c23ec8b3f41a55e5cafc54b.nix;
        revNum = 1;
        sha256 = "4c0b4b9d6d957eceaaa76a213ece3d2fc45c7c611c23ec8b3f41a55e5cafc54b";
      };
      default = "r1";
    };
  };
}