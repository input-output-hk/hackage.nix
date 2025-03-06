{
  "0.1.0.0" = {
    sha256 = "d2a23bbbfa3a749ef3ec542362075effdc441652852d7b46db42f33b284ecdad";
    revisions = {
      r0 = {
        nix = import ../hackage/tasty-golden-extra-0.1.0.0-r0-2902ccaeef0ec4b3bfc3bdbb4d360a8edb3b0782b5d14e547ba56051c5595f5d.nix;
        revNum = 0;
        sha256 = "2902ccaeef0ec4b3bfc3bdbb4d360a8edb3b0782b5d14e547ba56051c5595f5d";
      };
      r1 = {
        nix = import ../hackage/tasty-golden-extra-0.1.0.0-r1-ff2177a178481b70200c95e02ccaa56d7ce144a917aa03d46b2406ead90e4a78.nix;
        revNum = 1;
        sha256 = "ff2177a178481b70200c95e02ccaa56d7ce144a917aa03d46b2406ead90e4a78";
      };
      r2 = {
        nix = import ../hackage/tasty-golden-extra-0.1.0.0-r2-7c12c203ed92dc3aa23f66a4bc93f941046fdb2302c991cde9c55aed43f646ee.nix;
        revNum = 2;
        sha256 = "7c12c203ed92dc3aa23f66a4bc93f941046fdb2302c991cde9c55aed43f646ee";
      };
      default = "r2";
    };
  };
}