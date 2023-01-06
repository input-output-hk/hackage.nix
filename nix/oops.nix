{
  "0.1.0.0" = {
    sha256 = "1401f13f221d107e47c1a9ceb50831cdf64cd0cfaf67b4ee8ad2c0ed2b436191";
    revisions = {
      r0 = {
        nix = import ../hackage/oops-0.1.0.0-r0-9e522e4fe638de0a95021596901087a0e5d15c153bda6b6d6efcd5d4dbcdefa6.nix;
        revNum = 0;
        sha256 = "9e522e4fe638de0a95021596901087a0e5d15c153bda6b6d6efcd5d4dbcdefa6";
        };
      r1 = {
        nix = import ../hackage/oops-0.1.0.0-r1-0a0122294a1900c9a79229c221525edb858e3f33d09c6f2729070976c8fc145b.nix;
        revNum = 1;
        sha256 = "0a0122294a1900c9a79229c221525edb858e3f33d09c6f2729070976c8fc145b";
        };
      r2 = {
        nix = import ../hackage/oops-0.1.0.0-r2-1ce82d955a5075add4fd64b6c391d7bc2ea5abd4f711216d7c9d51e846d52bbf.nix;
        revNum = 2;
        sha256 = "1ce82d955a5075add4fd64b6c391d7bc2ea5abd4f711216d7c9d51e846d52bbf";
        };
      default = "r2";
      };
    };
  "0.1.1.0" = {
    sha256 = "bc05650da4c61923cea64b927b63a94aba06e6168d9b136c33addb3955038ce9";
    revisions = {
      r0 = {
        nix = import ../hackage/oops-0.1.1.0-r0-c21a5bbb22d5886999fdf6dc83eb8eda98e870b587244d1f24bf37a131c02e89.nix;
        revNum = 0;
        sha256 = "c21a5bbb22d5886999fdf6dc83eb8eda98e870b587244d1f24bf37a131c02e89";
        };
      default = "r0";
      };
    };
  "0.1.2.0" = {
    sha256 = "3037af99ad3606b703959bedf15abc6c20b68f8f647063ac464ad268a97dbb08";
    revisions = {
      r0 = {
        nix = import ../hackage/oops-0.1.2.0-r0-1495a161efd3531418bca65a6586d019dac35dd8a80d971645b2fa4cb0be5532.nix;
        revNum = 0;
        sha256 = "1495a161efd3531418bca65a6586d019dac35dd8a80d971645b2fa4cb0be5532";
        };
      default = "r0";
      };
    };
  }