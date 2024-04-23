{
  "0.2.0.0" = {
    sha256 = "349bd4119bd8bebaafb361765874216766e88d1320cd74a0416e52264d27e82a";
    revisions = {
      r0 = {
        nix = import ../hackage/network-transport-composed-0.2.0.0-r0-0e7d82b72d80d721ab95a09bca8301729c01b09076d6659f911465c6d731c710.nix;
        revNum = 0;
        sha256 = "0e7d82b72d80d721ab95a09bca8301729c01b09076d6659f911465c6d731c710";
      };
      default = "r0";
    };
  };
  "0.2.0.1" = {
    sha256 = "965f9e2ce1c2ea8e97b80caa8a226ec4a5ea745a0ca4fd640e72d7d37d41724f";
    revisions = {
      r0 = {
        nix = import ../hackage/network-transport-composed-0.2.0.1-r0-25b70d8239e4364d208d787165a234fc6f5de223f48746789063fb7a7b7b6ae4.nix;
        revNum = 0;
        sha256 = "25b70d8239e4364d208d787165a234fc6f5de223f48746789063fb7a7b7b6ae4";
      };
      r1 = {
        nix = import ../hackage/network-transport-composed-0.2.0.1-r1-fc0de146faca57d38e8dc93909679b7aa154bdf8e4e216346353ccd0234f96bb.nix;
        revNum = 1;
        sha256 = "fc0de146faca57d38e8dc93909679b7aa154bdf8e4e216346353ccd0234f96bb";
      };
      default = "r1";
    };
  };
  "0.2.1" = {
    sha256 = "a35bbfbe35a7a6c6e20e9d839f9f5b30f82f3680863968f73ce82e0e03e55944";
    revisions = {
      r0 = {
        nix = import ../hackage/network-transport-composed-0.2.1-r0-b988326526161e9fc2637a87be28546a36a39017cbc5fd4e873e71299a2a3ab7.nix;
        revNum = 0;
        sha256 = "b988326526161e9fc2637a87be28546a36a39017cbc5fd4e873e71299a2a3ab7";
      };
      default = "r0";
    };
  };
}