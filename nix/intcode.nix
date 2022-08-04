{
  "0.1.0.0" = {
    sha256 = "191921150d6c024970aa6a1639ba36bbe612b981859ba8018cd935d0f8188a51";
    revisions = {
      r0 = {
        nix = import ../hackage/intcode-0.1.0.0-r0-2522caa463ebf772ca9df89b48ee84ded9036cb7a0cce518c5757b4f8336b7a6.nix;
        revNum = 0;
        sha256 = "2522caa463ebf772ca9df89b48ee84ded9036cb7a0cce518c5757b4f8336b7a6";
        };
      default = "r0";
      };
    };
  "0.2.0.0" = {
    sha256 = "9ec0d9e7cb3421899ab70559b60cde36005387e65697ad6ee1d2c3094e63ecd3";
    revisions = {
      r0 = {
        nix = import ../hackage/intcode-0.2.0.0-r0-db7056a165027c6042546e2241e763131cb010e28c1fb21d2f16c1999cb00d98.nix;
        revNum = 0;
        sha256 = "db7056a165027c6042546e2241e763131cb010e28c1fb21d2f16c1999cb00d98";
        };
      default = "r0";
      };
    };
  "0.3.0.0" = {
    sha256 = "1ef570150629edb4bde5353b152fdf5e73f813d723bd1cb6b67c000b4bd09c61";
    revisions = {
      r0 = {
        nix = import ../hackage/intcode-0.3.0.0-r0-afd38e7603e610b56108868258d0b23bc393b1de23408e1db6f160c7e721e119.nix;
        revNum = 0;
        sha256 = "afd38e7603e610b56108868258d0b23bc393b1de23408e1db6f160c7e721e119";
        };
      r1 = {
        nix = import ../hackage/intcode-0.3.0.0-r1-8072d589b53f59cd3ae08a35ceb50c72c323d33e5399214e9d36235a4c75a9a9.nix;
        revNum = 1;
        sha256 = "8072d589b53f59cd3ae08a35ceb50c72c323d33e5399214e9d36235a4c75a9a9";
        };
      r2 = {
        nix = import ../hackage/intcode-0.3.0.0-r2-bc333d9fa5fb8088391e1751d69899e1be45eeb4ed52d70fd31e8414418aa0f9.nix;
        revNum = 2;
        sha256 = "bc333d9fa5fb8088391e1751d69899e1be45eeb4ed52d70fd31e8414418aa0f9";
        };
      r3 = {
        nix = import ../hackage/intcode-0.3.0.0-r3-5e6c03a84a1369eb6f6831d9586f104056aa475df87e8d0f74d3e2f78506d7a9.nix;
        revNum = 3;
        sha256 = "5e6c03a84a1369eb6f6831d9586f104056aa475df87e8d0f74d3e2f78506d7a9";
        };
      default = "r3";
      };
    };
  }