{
  "0.1.0.0" = {
    sha256 = "ffc613695eb8d5620b95c392a9cc2633c5e4894a0a3d8759ade563a345db06c7";
    revisions = {
      r0 = {
        nix = import ../hackage/dap-0.1.0.0-r0-8d07d06570354fe80ae55d8c526bee94d69e68b3365fa117995f7cd147fd859c.nix;
        revNum = 0;
        sha256 = "8d07d06570354fe80ae55d8c526bee94d69e68b3365fa117995f7cd147fd859c";
      };
      r1 = {
        nix = import ../hackage/dap-0.1.0.0-r1-5fc92d2bf57d51614aec2d41f025f0507413797fd9d14bd7b7b438b2b5c057a9.nix;
        revNum = 1;
        sha256 = "5fc92d2bf57d51614aec2d41f025f0507413797fd9d14bd7b7b438b2b5c057a9";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "345d48c8ed62e3384afefc93738e5f14b4b4a66086a93468e1af8ac8cc4c1b13";
    revisions = {
      r0 = {
        nix = import ../hackage/dap-0.2.0.0-r0-eb3a6e68fb4d34f7c4887559bcf0b35f983b20ac9c3f4161f4ebc8ccdef771a8.nix;
        revNum = 0;
        sha256 = "eb3a6e68fb4d34f7c4887559bcf0b35f983b20ac9c3f4161f4ebc8ccdef771a8";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "167a99f42ed12019c998306e7b3d4847708133c91a53dbf4391e4921c60176eb";
    revisions = {
      r0 = {
        nix = import ../hackage/dap-0.3.0.0-r0-527b591f4780f6e5087b58e38b36c76a52acb3dbc787ae4b17e3dd2a1acaaf12.nix;
        revNum = 0;
        sha256 = "527b591f4780f6e5087b58e38b36c76a52acb3dbc787ae4b17e3dd2a1acaaf12";
      };
      default = "r0";
    };
  };
  "0.3.1.0" = {
    sha256 = "1b007b867bf19421b072869b8ae2e725a2b550b4b9b8f412db45eb7e1ac38946";
    revisions = {
      r0 = {
        nix = import ../hackage/dap-0.3.1.0-r0-2e3f360463bba05cb062e764ae0dd958dba0ad67e83791e0d6d5adb3d259539a.nix;
        revNum = 0;
        sha256 = "2e3f360463bba05cb062e764ae0dd958dba0ad67e83791e0d6d5adb3d259539a";
      };
      default = "r0";
    };
  };
}