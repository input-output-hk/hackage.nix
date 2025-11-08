{
  "1.0.0" = {
    sha256 = "c3908fa0e2e49e5fcf938c28d8b658db29843a22a0d143c24a2a60965a35ab3c";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-redshift-1.0.0-r0-2ba779dd477b90196eb7babe0e8ea65e983bb79e39318e1b48728c88dfce794f.nix;
        revNum = 0;
        sha256 = "2ba779dd477b90196eb7babe0e8ea65e983bb79e39318e1b48728c88dfce794f";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "fe7f16a0a4e5f914ae1d678c1443496da8acfee4774675757771cea6a1f8ba97";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-redshift-1.0.1-r0-467879ac53a45e48a700c3ac2ce1f373283c992bd0f8882f40cdb2c6200760a4.nix;
        revNum = 0;
        sha256 = "467879ac53a45e48a700c3ac2ce1f373283c992bd0f8882f40cdb2c6200760a4";
      };
      default = "r0";
    };
  };
}