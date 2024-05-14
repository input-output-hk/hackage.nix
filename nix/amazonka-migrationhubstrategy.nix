{
  "2.0" = {
    sha256 = "5e43515c1133a0908ddaa25aec977b00b214cca29a915a6f83f2d837f31081c7";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-migrationhubstrategy-2.0-r0-1c67825c76ccb2cabdba76c10ba9b31a56521d9d494506b1ebfbf24dc56a1ed3.nix;
        revNum = 0;
        sha256 = "1c67825c76ccb2cabdba76c10ba9b31a56521d9d494506b1ebfbf24dc56a1ed3";
      };
      r1 = {
        nix = import ../hackage/amazonka-migrationhubstrategy-2.0-r1-5a67538db1c81e7f3225be269d27178e951a1162dcd4b36345af2dfce696c288.nix;
        revNum = 1;
        sha256 = "5a67538db1c81e7f3225be269d27178e951a1162dcd4b36345af2dfce696c288";
      };
      default = "r1";
    };
  };
}