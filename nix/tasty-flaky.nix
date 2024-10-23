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
}