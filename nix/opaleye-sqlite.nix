{
  "0.0.0.0" = {
    sha256 = "29f2cd7871bb02ce76670f354292b3688b2e85e08223a997596c7b1d2971f0d7";
    revisions = {
      r0 = {
        nix = import ../hackage/opaleye-sqlite-0.0.0.0-r0-c7ca95696fac884be2c9777b4fa4a1488cc1af21a692899c6a3e6f309fa383c2.nix;
        revNum = 0;
        sha256 = "c7ca95696fac884be2c9777b4fa4a1488cc1af21a692899c6a3e6f309fa383c2";
        };
      r1 = {
        nix = import ../hackage/opaleye-sqlite-0.0.0.0-r1-03d5fc288efd3d9a058b418601e3fdd6ce9df24339ae15653e4492614f7bc2d2.nix;
        revNum = 1;
        sha256 = "03d5fc288efd3d9a058b418601e3fdd6ce9df24339ae15653e4492614f7bc2d2";
        };
      default = "r1";
      };
    };
  "0.0.0.1" = {
    sha256 = "d127e230a96eceef4086497390c7cdfe883d224abed66ac77bcfa8bd0c61c6f0";
    revisions = {
      r0 = {
        nix = import ../hackage/opaleye-sqlite-0.0.0.1-r0-ca40c04ba440904a4fa00f5f79b06abcf67da4aff61527b1fee5603533f713de.nix;
        revNum = 0;
        sha256 = "ca40c04ba440904a4fa00f5f79b06abcf67da4aff61527b1fee5603533f713de";
        };
      default = "r0";
      };
    };
  "0.0.1.0" = {
    sha256 = "b8afd6df526f94bad4067e74f25e7c25e2909b1bc57270280405f7c905907164";
    revisions = {
      r0 = {
        nix = import ../hackage/opaleye-sqlite-0.0.1.0-r0-9cc3510ac935157189b3dcb21d0cb4c22d7726680a8dd84e9bf82381e826a580.nix;
        revNum = 0;
        sha256 = "9cc3510ac935157189b3dcb21d0cb4c22d7726680a8dd84e9bf82381e826a580";
        };
      default = "r0";
      };
    };
  "0.0.1.1" = {
    sha256 = "40df9daed681dabbad61d93dda8e5e106772d4f438519ee50ce91b39b0f0970b";
    revisions = {
      r0 = {
        nix = import ../hackage/opaleye-sqlite-0.0.1.1-r0-e3e55ee3eeca16b5a236d343565868a380c1e7e6f2d28fae236a8a90d1092a3b.nix;
        revNum = 0;
        sha256 = "e3e55ee3eeca16b5a236d343565868a380c1e7e6f2d28fae236a8a90d1092a3b";
        };
      default = "r0";
      };
    };
  }