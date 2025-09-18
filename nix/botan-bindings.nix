{
  "0.0.1.0" = {
    sha256 = "e9d9665375fdebde5933f419303c73817f1bf76de494306d9074243f74296b6b";
    revisions = {
      r0 = {
        nix = import ../hackage/botan-bindings-0.0.1.0-r0-adb9b9a7ec1f04dd10f77a477bac4726623dcaf35f06a4c8cfa11c2ec08c97bc.nix;
        revNum = 0;
        sha256 = "adb9b9a7ec1f04dd10f77a477bac4726623dcaf35f06a4c8cfa11c2ec08c97bc";
      };
      default = "r0";
    };
  };
  "0.1.0.0" = {
    sha256 = "1a2f8cda52c87bae49f25270bcf384e46b0105ec4b4fdb07c4036ce3acc652d1";
    revisions = {
      r0 = {
        nix = import ../hackage/botan-bindings-0.1.0.0-r0-d3d276a7d9cd6a16611e2218762ece575423a2a1351cb947f5f3868416b7fc3e.nix;
        revNum = 0;
        sha256 = "d3d276a7d9cd6a16611e2218762ece575423a2a1351cb947f5f3868416b7fc3e";
      };
      default = "r0";
    };
  };
}