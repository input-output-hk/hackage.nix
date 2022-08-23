{
  "0.1" = {
    sha256 = "048cf2b5b394229503bdd748c93cc19650b4223d01e11e954b373f7595c21241";
    revisions = {
      r0 = {
        nix = import ../hackage/ral-0.1-r0-6ba222a41e21ef14d6542e997bbc43c79a1bb31366f62516be5648fdf5b3e354.nix;
        revNum = 0;
        sha256 = "6ba222a41e21ef14d6542e997bbc43c79a1bb31366f62516be5648fdf5b3e354";
        };
      r1 = {
        nix = import ../hackage/ral-0.1-r1-cdc9f92254705c33a75e79cc411e6c3693fcf24efda6a971c9a49dbd55a65fb1.nix;
        revNum = 1;
        sha256 = "cdc9f92254705c33a75e79cc411e6c3693fcf24efda6a971c9a49dbd55a65fb1";
        };
      r2 = {
        nix = import ../hackage/ral-0.1-r2-846216dc676f8857236de6588d136eeda33f6f49f40a8d1c31d73f59d9f77928.nix;
        revNum = 2;
        sha256 = "846216dc676f8857236de6588d136eeda33f6f49f40a8d1c31d73f59d9f77928";
        };
      default = "r2";
      };
    };
  "0.2" = {
    sha256 = "7bb8dd47aac3fdae1a59b4ff9090cbd934d90cc056c438f712f47f4232179977";
    revisions = {
      r0 = {
        nix = import ../hackage/ral-0.2-r0-168ff276f3ede72f3e6a72d7a2e79d08d732d13df67ce776b9569f88b1e266b9.nix;
        revNum = 0;
        sha256 = "168ff276f3ede72f3e6a72d7a2e79d08d732d13df67ce776b9569f88b1e266b9";
        };
      default = "r0";
      };
    };
  "0.2.1" = {
    sha256 = "510fa3a1293a5ff04f605aabafe65e6bdb1a15b085d173ed9bfda317909edab8";
    revisions = {
      r0 = {
        nix = import ../hackage/ral-0.2.1-r0-36c44da73cb72860927c40b09309c8fdcdf54d65b1810d8046b6ab1690694a16.nix;
        revNum = 0;
        sha256 = "36c44da73cb72860927c40b09309c8fdcdf54d65b1810d8046b6ab1690694a16";
        };
      r1 = {
        nix = import ../hackage/ral-0.2.1-r1-98c892152af5ed5c594a0be23fec9161a3e7203c84214f14b7929ef459991b8a.nix;
        revNum = 1;
        sha256 = "98c892152af5ed5c594a0be23fec9161a3e7203c84214f14b7929ef459991b8a";
        };
      default = "r1";
      };
    };
  }