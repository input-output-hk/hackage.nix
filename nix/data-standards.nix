{
  "0.1.0.0" = {
    sha256 = "9ffbaad9a13dd0508cfe243a35b212d9bb38530696bdaa5257b10ca969998e04";
    revisions = {
      r0 = {
        nix = import ../hackage/data-standards-0.1.0.0-r0-b4abac1bffff16d8ec1e8d7f5973acb97af96e50cc1418b5e2e2b769dadf15e1.nix;
        revNum = 0;
        sha256 = "b4abac1bffff16d8ec1e8d7f5973acb97af96e50cc1418b5e2e2b769dadf15e1";
      };
      r1 = {
        nix = import ../hackage/data-standards-0.1.0.0-r1-0774ed1aa58ed4af471914bf56ae143a4d2badd2caf05114fc244e3dbfa7903c.nix;
        revNum = 1;
        sha256 = "0774ed1aa58ed4af471914bf56ae143a4d2badd2caf05114fc244e3dbfa7903c";
      };
      default = "r1";
    };
  };
  "0.1.0.1" = {
    sha256 = "8da4ce29c622d84ebdd291d0cf8b5c5aa4cda1195de8e4d008d08e62f683a85b";
    revisions = {
      r0 = {
        nix = import ../hackage/data-standards-0.1.0.1-r0-8e77f2c23be6b6cb7d3d28011d6f00f112854efbbf0bec25e48a42892a0a6bbe.nix;
        revNum = 0;
        sha256 = "8e77f2c23be6b6cb7d3d28011d6f00f112854efbbf0bec25e48a42892a0a6bbe";
      };
      default = "r0";
    };
  };
  "0.1.0.2" = {
    sha256 = "49325c0f8b6c2385188e0519a3704eb78e6a4ffc4cda155985da08eb856794f6";
    revisions = {
      r0 = {
        nix = import ../hackage/data-standards-0.1.0.2-r0-67f5bca2c1da6d74645386a987ca15c95b986f232650ca1e4e4297bafcde9dea.nix;
        revNum = 0;
        sha256 = "67f5bca2c1da6d74645386a987ca15c95b986f232650ca1e4e4297bafcde9dea";
      };
      default = "r0";
    };
  };
}