{
  "0.1.0.0" = {
    sha256 = "87fa907acbaa50fce8b037297340652ed604d6002d43422e67a6a7abe0a88c0c";
    revisions = {
      r0 = {
        nix = import ../hackage/criterion-compare-0.1.0.0-r0-a27242f4341ff596f56c7bc8f1f2642e4e94ef48b6f853776b5fc6227f9d756c.nix;
        revNum = 0;
        sha256 = "a27242f4341ff596f56c7bc8f1f2642e4e94ef48b6f853776b5fc6227f9d756c";
      };
      r1 = {
        nix = import ../hackage/criterion-compare-0.1.0.0-r1-06c77e9fb90ef4f4d34045e859f4de6dc433b42045d45857f519b25cc1c4fc5b.nix;
        revNum = 1;
        sha256 = "06c77e9fb90ef4f4d34045e859f4de6dc433b42045d45857f519b25cc1c4fc5b";
      };
      r2 = {
        nix = import ../hackage/criterion-compare-0.1.0.0-r2-b997465c557681331d5bc354847e4c4c2817a26caf6310a96820146636a7301c.nix;
        revNum = 2;
        sha256 = "b997465c557681331d5bc354847e4c4c2817a26caf6310a96820146636a7301c";
      };
      default = "r2";
    };
  };
}