{
  "0.1.0.0" = {
    sha256 = "fd5953c1d9c47f9996dd224be34043c5731faa2ad64e5bd49d27e01fa69eed6c";
    revisions = {
      r0 = {
        nix = import ../hackage/basen-0.1.0.0-r0-4bea1e86c1a682e1b275d5d26b7ad750f9102f161e02c3edf8bc4415b86cce0b.nix;
        revNum = 0;
        sha256 = "4bea1e86c1a682e1b275d5d26b7ad750f9102f161e02c3edf8bc4415b86cce0b";
      };
      r1 = {
        nix = import ../hackage/basen-0.1.0.0-r1-48f6a65d8c65b30f50b3763833f99a61efb872cd9352bba549921e5867d99547.nix;
        revNum = 1;
        sha256 = "48f6a65d8c65b30f50b3763833f99a61efb872cd9352bba549921e5867d99547";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "6ba24b46d8c3064a30d43b12ac5040c8c3239f4310c4c138617231748fccbb54";
    revisions = {
      r0 = {
        nix = import ../hackage/basen-0.2.0.0-r0-e7b697b3e3f037d32aae05c9a94be39c80848998adbd9e4c81e91b48b34e03c5.nix;
        revNum = 0;
        sha256 = "e7b697b3e3f037d32aae05c9a94be39c80848998adbd9e4c81e91b48b34e03c5";
      };
      default = "r0";
    };
  };
}