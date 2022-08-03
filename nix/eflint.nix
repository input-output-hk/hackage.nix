{
  "3.0.0.1" = {
    sha256 = "8c9d7dfd64e6261136903afe79cf4e910ee5a19a7f0dc3886d81f05cc30b32b2";
    revisions = {
      r0 = {
        nix = import ../hackage/eflint-3.0.0.1-r0-d60d04ff12c9fb0090ea34ef47cb799aff36e4496164b36d3c7e2e0618c76b28.nix;
        revNum = 0;
        sha256 = "d60d04ff12c9fb0090ea34ef47cb799aff36e4496164b36d3c7e2e0618c76b28";
        };
      r1 = {
        nix = import ../hackage/eflint-3.0.0.1-r1-33a3cd5a6c449f84da1088999620cecdea4db013ae07a6dfa2afee4de3017181.nix;
        revNum = 1;
        sha256 = "33a3cd5a6c449f84da1088999620cecdea4db013ae07a6dfa2afee4de3017181";
        };
      default = "r1";
      };
    };
  "3.0.0.2" = {
    sha256 = "13358fda259934f15b6db14fc31cb515dd1c6f200029048bcb332d5d67623093";
    revisions = {
      r0 = {
        nix = import ../hackage/eflint-3.0.0.2-r0-f1c30e7ea6118a11fa308f3ebc1d8f05e75d33988265af35f86bc2bb8db4c790.nix;
        revNum = 0;
        sha256 = "f1c30e7ea6118a11fa308f3ebc1d8f05e75d33988265af35f86bc2bb8db4c790";
        };
      default = "r0";
      };
    };
  }