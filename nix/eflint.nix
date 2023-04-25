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
  "3.1.0.0" = {
    sha256 = "95557742d06edabe0554058b3e49d71d3f283f883c5ac3baeeffe9a701e2b7af";
    revisions = {
      r0 = {
        nix = import ../hackage/eflint-3.1.0.0-r0-c93a75804b007e40be541e7ced6b337fd3d645fa9b4090e5cbe8e0541d5139eb.nix;
        revNum = 0;
        sha256 = "c93a75804b007e40be541e7ced6b337fd3d645fa9b4090e5cbe8e0541d5139eb";
        };
      default = "r0";
      };
    };
  "3.1.0.1" = {
    sha256 = "9ee212611cbdba54c98d4608bc7fd4a99cdd132a5b9b7d1c7f2b54eb02a885a6";
    revisions = {
      r0 = {
        nix = import ../hackage/eflint-3.1.0.1-r0-61c3b4fb2ba85fae7e68e1abc168006f739f76542e668419a5c590d89babfb65.nix;
        revNum = 0;
        sha256 = "61c3b4fb2ba85fae7e68e1abc168006f739f76542e668419a5c590d89babfb65";
        };
      default = "r0";
      };
    };
  }