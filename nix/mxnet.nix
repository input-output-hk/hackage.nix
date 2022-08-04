{
  "0.1.0.0" = {
    sha256 = "d07844e8ebde054fe743c30de03b2b77c46449035c6faeecf7f063d9618ddf38";
    revisions = {
      r0 = {
        nix = import ../hackage/mxnet-0.1.0.0-r0-9250e142da86a08c0d9e9f07dd6eb16663d3a5c9e0bfca34e5affd985d41ba8e.nix;
        revNum = 0;
        sha256 = "9250e142da86a08c0d9e9f07dd6eb16663d3a5c9e0bfca34e5affd985d41ba8e";
        };
      default = "r0";
      };
    };
  "0.1.0.1" = {
    sha256 = "9407f88beb3f0f472b3aa61ca9a16b0ae41c6b3eff6b1bb868d4787ad27bb10e";
    revisions = {
      r0 = {
        nix = import ../hackage/mxnet-0.1.0.1-r0-877a285e299b39ea015a6a99c5e1649d901fd364f2bd2189a51104547795aca9.nix;
        revNum = 0;
        sha256 = "877a285e299b39ea015a6a99c5e1649d901fd364f2bd2189a51104547795aca9";
        };
      default = "r0";
      };
    };
  "0.2.0.0" = {
    sha256 = "3212e0968af4f47a5ae9b2cd135bf5466a1df14cc558ce29856cebff1209ff17";
    revisions = {
      r0 = {
        nix = import ../hackage/mxnet-0.2.0.0-r0-380c93d5bc81d5e0709bb214e49db9dc951691d47d1183e35da2e86383d5183f.nix;
        revNum = 0;
        sha256 = "380c93d5bc81d5e0709bb214e49db9dc951691d47d1183e35da2e86383d5183f";
        };
      r1 = {
        nix = import ../hackage/mxnet-0.2.0.0-r1-f532881d3ee54fb423291ac19303e0b0ecffef65b682fe72bb6522808295137d.nix;
        revNum = 1;
        sha256 = "f532881d3ee54fb423291ac19303e0b0ecffef65b682fe72bb6522808295137d";
        };
      default = "r1";
      };
    };
  }