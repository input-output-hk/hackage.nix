{
  "13.0.14.0" = {
    sha256 = "27b5e6e77f3c77fbf27b8cb96427de7a821e5bb88dd8db510c97a6c890a51d57";
    revisions = {
      r0 = {
        nix = import ../hackage/hs-tree-sitter-13.0.14.0-r0-267ee1ee475f0e0dc846bf782a640f16a7f3879e13fc14c4e63676e1230f8c03.nix;
        revNum = 0;
        sha256 = "267ee1ee475f0e0dc846bf782a640f16a7f3879e13fc14c4e63676e1230f8c03";
      };
      r1 = {
        nix = import ../hackage/hs-tree-sitter-13.0.14.0-r1-30325baea017dc6deeadd1cecc5077a5f2d6bbdedbeab85f4f7d6d4af2293d92.nix;
        revNum = 1;
        sha256 = "30325baea017dc6deeadd1cecc5077a5f2d6bbdedbeab85f4f7d6d4af2293d92";
      };
      default = "r1";
    };
  };
}