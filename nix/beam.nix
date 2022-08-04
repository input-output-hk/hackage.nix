{
  "0.3.0.0" = {
    sha256 = "e625e87da14862e543791c4b41ba6f209c2ce803634f14ed6a56fd06b540b87a";
    revisions = {
      r0 = {
        nix = import ../hackage/beam-0.3.0.0-r0-170ac887290720f6488db3804683b882290c3774d208faf8e6f92a4e0a7be542.nix;
        revNum = 0;
        sha256 = "170ac887290720f6488db3804683b882290c3774d208faf8e6f92a4e0a7be542";
        };
      r1 = {
        nix = import ../hackage/beam-0.3.0.0-r1-8b152385012f449ccf0bcfafe8563437e07e89e3b2671ba7db51d5c7aed11bb1.nix;
        revNum = 1;
        sha256 = "8b152385012f449ccf0bcfafe8563437e07e89e3b2671ba7db51d5c7aed11bb1";
        };
      default = "r1";
      };
    };
  "0.3.1.0" = {
    sha256 = "82d54265087eb97415046686393b63ae6bc3ef9e4b4e28d0a869935d6e54a7b3";
    revisions = {
      r0 = {
        nix = import ../hackage/beam-0.3.1.0-r0-9de9d5326c4e391028255d15efbb64c9233c66d04892b92f637241d2c9ae85a2.nix;
        revNum = 0;
        sha256 = "9de9d5326c4e391028255d15efbb64c9233c66d04892b92f637241d2c9ae85a2";
        };
      default = "r0";
      };
    };
  "0.3.2.0" = {
    sha256 = "1a6facf70119515b46b05e336bff59254d8e69f38cfeca6a65625e130fb26b5a";
    revisions = {
      r0 = {
        nix = import ../hackage/beam-0.3.2.0-r0-04eeb0c917203070096a27d818eb64fa4727bd235df5ed8bfcbc8e8e4a617076.nix;
        revNum = 0;
        sha256 = "04eeb0c917203070096a27d818eb64fa4727bd235df5ed8bfcbc8e8e4a617076";
        };
      r1 = {
        nix = import ../hackage/beam-0.3.2.0-r1-370537203f4cc5d9d5da384cb00f5da1540c6f73bc0da9b92c2753cd0e8404da.nix;
        revNum = 1;
        sha256 = "370537203f4cc5d9d5da384cb00f5da1540c6f73bc0da9b92c2753cd0e8404da";
        };
      default = "r1";
      };
    };
  }