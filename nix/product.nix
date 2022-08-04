{
  "0.1.0.0" = {
    sha256 = "f335039b46c3a479cfc55c47ce7a44ba70ee102156aaacc992060b568b5b01b6";
    revisions = {
      r0 = {
        nix = import ../hackage/product-0.1.0.0-r0-f5dd4b5e37a81e4d7d1645f5d6e3edb46bb1468a71cbf33e5ee70ca8c3e3b3ac.nix;
        revNum = 0;
        sha256 = "f5dd4b5e37a81e4d7d1645f5d6e3edb46bb1468a71cbf33e5ee70ca8c3e3b3ac";
        };
      r1 = {
        nix = import ../hackage/product-0.1.0.0-r1-b06b712842077c6073692f4aed2269d54966024e538632cac112051008d1c490.nix;
        revNum = 1;
        sha256 = "b06b712842077c6073692f4aed2269d54966024e538632cac112051008d1c490";
        };
      r2 = {
        nix = import ../hackage/product-0.1.0.0-r2-a2cabd32048d2e655101d0687d9a44f2f20eaf4ec423957df1020e8698174d6b.nix;
        revNum = 2;
        sha256 = "a2cabd32048d2e655101d0687d9a44f2f20eaf4ec423957df1020e8698174d6b";
        };
      default = "r2";
      };
    };
  }