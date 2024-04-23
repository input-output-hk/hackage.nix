{
  "0.1.0.0" = {
    sha256 = "90fcc9afd900c15b3e4a333376fbae60c4e5b075bd03ce00eb47f774016371fe";
    revisions = {
      r0 = {
        nix = import ../hackage/tax-0.1.0.0-r0-70712a80e5e066bfe4789b11564ed694b9bd31e9a6aefc328dffe7f87903909c.nix;
        revNum = 0;
        sha256 = "70712a80e5e066bfe4789b11564ed694b9bd31e9a6aefc328dffe7f87903909c";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "0bcb309edba98b7ab2cff404b228d2275afa289ff3d4b6a4d8c888ac670e218d";
    revisions = {
      r0 = {
        nix = import ../hackage/tax-0.2.0.0-r0-ae713230baec3b5d139543e3c1f23222713584519d0d9db484e1330ed910c2b2.nix;
        revNum = 0;
        sha256 = "ae713230baec3b5d139543e3c1f23222713584519d0d9db484e1330ed910c2b2";
      };
      default = "r0";
    };
  };
}