{
  "0.1.0" = {
    sha256 = "a1117cb9baa909ee1daf4c63039997e379fbcc7d908610b9b642f15e371680ae";
    revisions = {
      r0 = {
        nix = import ../hackage/skeletest-0.1.0-r0-24534ec178cafe80115ad09eae69cfedfafb56432befa0b53aff51f73bd57fd0.nix;
        revNum = 0;
        sha256 = "24534ec178cafe80115ad09eae69cfedfafb56432befa0b53aff51f73bd57fd0";
      };
      r1 = {
        nix = import ../hackage/skeletest-0.1.0-r1-5a2f8899eb98bf25940e616be5b4473c03805bb400c29082f7827f9f505f61e6.nix;
        revNum = 1;
        sha256 = "5a2f8899eb98bf25940e616be5b4473c03805bb400c29082f7827f9f505f61e6";
      };
      default = "r1";
    };
  };
  "0.1.1" = {
    sha256 = "dca653e8f7579031e4cf72083e5dd803e5f2d5b1d2e451305c9e6f8d9eb101f8";
    revisions = {
      r0 = {
        nix = import ../hackage/skeletest-0.1.1-r0-5999663f51a006f0620cdfc3b0a7a174b85ae690a346a9c32636b5f5fc054b82.nix;
        revNum = 0;
        sha256 = "5999663f51a006f0620cdfc3b0a7a174b85ae690a346a9c32636b5f5fc054b82";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "889729e965cd0fb0aa653c8c0d4897d3a863912559004718232c0e618bd7a1d6";
    revisions = {
      r0 = {
        nix = import ../hackage/skeletest-0.2.0-r0-24c9b76db22dd894ce2c8630e2ce4f495f0023bbd4a671b0a40af95a43a97b53.nix;
        revNum = 0;
        sha256 = "24c9b76db22dd894ce2c8630e2ce4f495f0023bbd4a671b0a40af95a43a97b53";
      };
      default = "r0";
    };
  };
  "0.2.1" = {
    sha256 = "883c98d059c3c8f51e162fe1897169fea9fd09f445ef60ae16d2619c99c3a5c9";
    revisions = {
      r0 = {
        nix = import ../hackage/skeletest-0.2.1-r0-9b7452da1e4ce15890ec2e0a2281cea907015632b0428247e367b82df0ce2e78.nix;
        revNum = 0;
        sha256 = "9b7452da1e4ce15890ec2e0a2281cea907015632b0428247e367b82df0ce2e78";
      };
      default = "r0";
    };
  };
}