{
  "0.1.0.0" = {
    sha256 = "53edef5cb31c469e99c5d7d224fe70a0f0a67ce577c1ca8c8b7a0cc80379b776";
    revisions = {
      r0 = {
        nix = import ../hackage/Synapse-0.1.0.0-r0-930c10c02f0eef6309d1dac6000137ba5a002f1e66bb0519f729fb352d7532fd.nix;
        revNum = 0;
        sha256 = "930c10c02f0eef6309d1dac6000137ba5a002f1e66bb0519f729fb352d7532fd";
      };
      r1 = {
        nix = import ../hackage/Synapse-0.1.0.0-r1-a5fea6d9402c0094aedeabf90271ebb9691948e58e4dd95e348950e730ff3a84.nix;
        revNum = 1;
        sha256 = "a5fea6d9402c0094aedeabf90271ebb9691948e58e4dd95e348950e730ff3a84";
      };
      r2 = {
        nix = import ../hackage/Synapse-0.1.0.0-r2-c9036ce4b03473400dea3b6bef7ebd612070c07fbce9e8ab4bd3c66959025b73.nix;
        revNum = 2;
        sha256 = "c9036ce4b03473400dea3b6bef7ebd612070c07fbce9e8ab4bd3c66959025b73";
      };
      r3 = {
        nix = import ../hackage/Synapse-0.1.0.0-r3-5d96131bfa407dc2a444300ff087265041fd0c0c23d53da003cb639a77c7da8a.nix;
        revNum = 3;
        sha256 = "5d96131bfa407dc2a444300ff087265041fd0c0c23d53da003cb639a77c7da8a";
      };
      default = "r3";
    };
  };
  "0.1.0.1" = {
    sha256 = "b929bc567f704e3fe8a56981378c8f08cee2383e3381ee97736b39b51e0e0663";
    revisions = {
      r0 = {
        nix = import ../hackage/Synapse-0.1.0.1-r0-efcf93aaff74daafc7559bce3a16fc9e3f077559bed4f2ea6d7c896ee3e37bae.nix;
        revNum = 0;
        sha256 = "efcf93aaff74daafc7559bce3a16fc9e3f077559bed4f2ea6d7c896ee3e37bae";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "bb71d465cb207fc08b485ac91de15dd05c90605556e74a52f1bae07a697cffda";
    revisions = {
      r0 = {
        nix = import ../hackage/Synapse-0.1.0.2-r0-547ba757987f009206a37332f0e0ae40cdfca1d712d419ba58183b125a732a33.nix;
        revNum = 0;
        sha256 = "547ba757987f009206a37332f0e0ae40cdfca1d712d419ba58183b125a732a33";
      };
      default = "r0";
    };
  };
}