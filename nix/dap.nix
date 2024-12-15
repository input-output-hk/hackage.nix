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
}