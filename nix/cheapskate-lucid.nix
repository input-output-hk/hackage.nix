{
  "0.1.0.0" = {
    sha256 = "f582e512befd2707a7056c1d15541967de2e0ce5702bc2197a3fced58a777245";
    revisions = {
      r0 = {
        nix = import ../hackage/cheapskate-lucid-0.1.0.0-r0-ffbe9d702e53b078e8b5022cfc3296be613116740ac9f80c6244a2e471448591.nix;
        revNum = 0;
        sha256 = "ffbe9d702e53b078e8b5022cfc3296be613116740ac9f80c6244a2e471448591";
        };
      r1 = {
        nix = import ../hackage/cheapskate-lucid-0.1.0.0-r1-0c1a27c3ddc17cde2cfad11876c2ccdb2c6546b68ffdb7fd3f3108de4beaf6a4.nix;
        revNum = 1;
        sha256 = "0c1a27c3ddc17cde2cfad11876c2ccdb2c6546b68ffdb7fd3f3108de4beaf6a4";
        };
      default = "r1";
      };
    };
  }