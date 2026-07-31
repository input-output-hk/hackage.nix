{
  "0.17.1" = {
    sha256 = "4b88983c21a3baae807510eb037aa53eac14fb3cd774f2c4b47e7d5a37cd4a30";
    revisions = {
      r0 = {
        nix = import ../hackage/hydra-build-0.17.1-r0-1eeaeaea2028a24173f166f39d329200a0d636150b67eb4643eee2fec3a720b5.nix;
        revNum = 0;
        sha256 = "1eeaeaea2028a24173f166f39d329200a0d636150b67eb4643eee2fec3a720b5";
      };
      default = "r0";
    };
  };
  "0.17.2" = {
    sha256 = "076225044becef5cbe1ade1a0e713fc44f81c4ad0463e4f860cba087094650c8";
    revisions = {
      r0 = {
        nix = import ../hackage/hydra-build-0.17.2-r0-f260d3cc198387ed2b6a742e537b93b9b1219f5011c998a49724be5829dd35d4.nix;
        revNum = 0;
        sha256 = "f260d3cc198387ed2b6a742e537b93b9b1219f5011c998a49724be5829dd35d4";
      };
      default = "r0";
    };
  };
}