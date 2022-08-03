{
  "0.1.0.0" = {
    sha256 = "421ce348f68e215753a5b3b020f78a8ad52ee22670d22e11449c19fe5e837d30";
    revisions = {
      r0 = {
        nix = import ../hackage/pro-source-0.1.0.0-r0-071136117309a7bcdf116c8400d31920a27608bfad17838063ea8395c084eab6.nix;
        revNum = 0;
        sha256 = "071136117309a7bcdf116c8400d31920a27608bfad17838063ea8395c084eab6";
        };
      r1 = {
        nix = import ../hackage/pro-source-0.1.0.0-r1-cf0213788e68212357475a9fb0dc641698b67750358463636961c2c61735acd7.nix;
        revNum = 1;
        sha256 = "cf0213788e68212357475a9fb0dc641698b67750358463636961c2c61735acd7";
        };
      default = "r1";
      };
    };
  }