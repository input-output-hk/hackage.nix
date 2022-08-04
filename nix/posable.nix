{
  "1.0.0.0" = {
    sha256 = "07159cb25b78bc53441b3ff274d7bfaae544e5a05fecfdc0ef301266ec1090c0";
    revisions = {
      r0 = {
        nix = import ../hackage/posable-1.0.0.0-r0-ca5318d60376040d914f974c40db3134b42c6e604e12fe3b4bff4cdb4a3db1be.nix;
        revNum = 0;
        sha256 = "ca5318d60376040d914f974c40db3134b42c6e604e12fe3b4bff4cdb4a3db1be";
        };
      r1 = {
        nix = import ../hackage/posable-1.0.0.0-r1-2d4a8076491fcc7693350672561d5d7528c847bcd7e4d888e9aea91b847101d8.nix;
        revNum = 1;
        sha256 = "2d4a8076491fcc7693350672561d5d7528c847bcd7e4d888e9aea91b847101d8";
        };
      default = "r1";
      };
    };
  "1.0.0.1" = {
    sha256 = "c47456d47fdd257b27dd250b1cdf0f534f53e0fa73706a234c229d2ebb87961e";
    revisions = {
      r0 = {
        nix = import ../hackage/posable-1.0.0.1-r0-7471a9904c219cbd872c729de3ae20e61bc46787b10e3e8d5754305e75c3a0fa.nix;
        revNum = 0;
        sha256 = "7471a9904c219cbd872c729de3ae20e61bc46787b10e3e8d5754305e75c3a0fa";
        };
      default = "r0";
      };
    };
  }