{
  "0.0.0.0" = {
    sha256 = "530c160e9bb2df7c57d916c030d29447a2a45047a5578442df3a7bb9080d1e89";
    revisions = {
      r0 = {
        nix = import ../hackage/hlist-0.0.0.0-r0-5ee588580550018c03882b27d6a243df8b5f503bba98f86ddb44b85ed8bc4e52.nix;
        revNum = 0;
        sha256 = "5ee588580550018c03882b27d6a243df8b5f503bba98f86ddb44b85ed8bc4e52";
        };
      r1 = {
        nix = import ../hackage/hlist-0.0.0.0-r1-b6a622cc7a31b0063bbeea93d77bcec00c80e90726262e9783b60b435bbf2a53.nix;
        revNum = 1;
        sha256 = "b6a622cc7a31b0063bbeea93d77bcec00c80e90726262e9783b60b435bbf2a53";
        };
      r2 = {
        nix = import ../hackage/hlist-0.0.0.0-r2-c8c00977e133a2b59145bd32eee95df4d56258352bdc5390dddb439b27a09b61.nix;
        revNum = 2;
        sha256 = "c8c00977e133a2b59145bd32eee95df4d56258352bdc5390dddb439b27a09b61";
        };
      default = "r2";
      };
    };
  }