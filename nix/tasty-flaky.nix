{
  "0.1.0.0" = {
    sha256 = "074d5a7dc285de7356dcf476c5c31e07df4c0f7da11af2a044e90acda2db14dc";
    revisions = {
      r0 = {
        nix = import ../hackage/tasty-flaky-0.1.0.0-r0-350844a5547df6abbc9b7daf7d3bc4337fb20cb5d9f85f760462c3ef813a1701.nix;
        revNum = 0;
        sha256 = "350844a5547df6abbc9b7daf7d3bc4337fb20cb5d9f85f760462c3ef813a1701";
      };
      r1 = {
        nix = import ../hackage/tasty-flaky-0.1.0.0-r1-91d9a941064964ad07fc0e4e63fcf75f1f3570e4c17a9db011225fcf8100bd4d.nix;
        revNum = 1;
        sha256 = "91d9a941064964ad07fc0e4e63fcf75f1f3570e4c17a9db011225fcf8100bd4d";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "fe0aec6715c2bf4577d6ea007d70ed52d5a4ec9bdceeb6669841711f6f95ea44";
    revisions = {
      r0 = {
        nix = import ../hackage/tasty-flaky-0.1.1.0-r0-823bab93e8e137786e3fe18ffad0a743e8388de1c465b01984f744c59acc296e.nix;
        revNum = 0;
        sha256 = "823bab93e8e137786e3fe18ffad0a743e8388de1c465b01984f744c59acc296e";
      };
      default = "r0";
    };
  };
  "0.1.2.0" = {
    sha256 = "ed71a7bcf00b54df7fc008b4ae6cae7a112745f7f5225d25ecf565ea74c5b2df";
    revisions = {
      r0 = {
        nix = import ../hackage/tasty-flaky-0.1.2.0-r0-2f91ab9f55ae0c472474087f98bb54076aca18f8b058343479d24597a3aa181b.nix;
        revNum = 0;
        sha256 = "2f91ab9f55ae0c472474087f98bb54076aca18f8b058343479d24597a3aa181b";
      };
      default = "r0";
    };
  };
}