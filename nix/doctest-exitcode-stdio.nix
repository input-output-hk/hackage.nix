{
  "0.0" = {
    sha256 = "1dec779d5e67ea46c8b0d69d454e0717383654e87323bdebc2bc0a8cb33f6cbc";
    revisions = {
      r0 = {
        nix = import ../hackage/doctest-exitcode-stdio-0.0-r0-7af215015a215ffa74dd8104707cac10d689fa43ef6cd26529f181a17cafcde6.nix;
        revNum = 0;
        sha256 = "7af215015a215ffa74dd8104707cac10d689fa43ef6cd26529f181a17cafcde6";
      };
      r1 = {
        nix = import ../hackage/doctest-exitcode-stdio-0.0-r1-a34619492781c17817f3af9f4f409335c7d0f8751b5ac4aaa1f01bc816d2c580.nix;
        revNum = 1;
        sha256 = "a34619492781c17817f3af9f4f409335c7d0f8751b5ac4aaa1f01bc816d2c580";
      };
      r2 = {
        nix = import ../hackage/doctest-exitcode-stdio-0.0-r2-abccaae9529f751dfeebb2afbbc32d1d2d65142bf4617b4903d58850d7ecd63d.nix;
        revNum = 2;
        sha256 = "abccaae9529f751dfeebb2afbbc32d1d2d65142bf4617b4903d58850d7ecd63d";
      };
      default = "r2";
    };
  };
}