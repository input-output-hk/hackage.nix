{
  "0.1" = {
    sha256 = "736572d6aba5e8039d63633ab6bacb5fe972f3b067595af07088dfcca3fbc836";
    revisions = {
      r0 = {
        nix = import ../hackage/tasty-bench-fit-0.1-r0-2263777736888098bc8a07b4ca9445ddc09533d0680ca854cb9b3d0afb688dfd.nix;
        revNum = 0;
        sha256 = "2263777736888098bc8a07b4ca9445ddc09533d0680ca854cb9b3d0afb688dfd";
        };
      r1 = {
        nix = import ../hackage/tasty-bench-fit-0.1-r1-d47c61a78c5fca32a41f8bbbd3443320eaa84cfd82ac0d8592dee486f10692c3.nix;
        revNum = 1;
        sha256 = "d47c61a78c5fca32a41f8bbbd3443320eaa84cfd82ac0d8592dee486f10692c3";
        };
      r2 = {
        nix = import ../hackage/tasty-bench-fit-0.1-r2-407a41cd5d01f78a81cbc036ebf9becbd697f9a623dca7a442101f0a3f4be7ac.nix;
        revNum = 2;
        sha256 = "407a41cd5d01f78a81cbc036ebf9becbd697f9a623dca7a442101f0a3f4be7ac";
        };
      default = "r2";
      };
    };
  }