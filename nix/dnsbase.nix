{
  "1.0.0.0" = {
    sha256 = "7675e59776387e89f3ebb5259ba42f22495a27c794b8c0ac29723a8494a87c6a";
    revisions = {
      r0 = {
        nix = import ../hackage/dnsbase-1.0.0.0-r0-b5688395bd94d8f271faddddcd4f0a56984d3a9a9d8edfec19caa13e1292651c.nix;
        revNum = 0;
        sha256 = "b5688395bd94d8f271faddddcd4f0a56984d3a9a9d8edfec19caa13e1292651c";
      };
      default = "r0";
    };
  };
  "1.0.1.0" = {
    sha256 = "9cbae470339db11deff7e706a33dba89cb6f579549bd24d0bd887b009c7ddf42";
    revisions = {
      r0 = {
        nix = import ../hackage/dnsbase-1.0.1.0-r0-6d0f1a1e0b4e2a443a1296ad9041eb7dd52fe5a19c95320a165474c4a22557f6.nix;
        revNum = 0;
        sha256 = "6d0f1a1e0b4e2a443a1296ad9041eb7dd52fe5a19c95320a165474c4a22557f6";
      };
      default = "r0";
    };
  };
  "1.0.2.0" = {
    sha256 = "43f0f6827996941668000335a713c4e01997185bdc4f3930564d573740203d6f";
    revisions = {
      r0 = {
        nix = import ../hackage/dnsbase-1.0.2.0-r0-ae17848bf3bc505f953b30de3a604673acddb8f381712dbb173dcaf61b335797.nix;
        revNum = 0;
        sha256 = "ae17848bf3bc505f953b30de3a604673acddb8f381712dbb173dcaf61b335797";
      };
      r1 = {
        nix = import ../hackage/dnsbase-1.0.2.0-r1-4aa21a0d24f343528e09e264b6c5ab4fc172f8dcc4d851d04674bd6ea76f55fe.nix;
        revNum = 1;
        sha256 = "4aa21a0d24f343528e09e264b6c5ab4fc172f8dcc4d851d04674bd6ea76f55fe";
      };
      r2 = {
        nix = import ../hackage/dnsbase-1.0.2.0-r2-a19d3183e1efacaccb42004579f8ee48183bb145add249ece5e50cc8bf6dcef9.nix;
        revNum = 2;
        sha256 = "a19d3183e1efacaccb42004579f8ee48183bb145add249ece5e50cc8bf6dcef9";
      };
      default = "r2";
    };
  };
}