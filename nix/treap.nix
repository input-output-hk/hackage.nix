{
  "0.0.0.0" = {
    sha256 = "a92d7335e007a88cf1a3f44d52d6e305763dd98ed1280f353dcf95497594027f";
    revisions = {
      r0 = {
        nix = import ../hackage/treap-0.0.0.0-r0-398c02c3fcbf124480df342d15c7b4a3740c123264083e15faf38823e598f220.nix;
        revNum = 0;
        sha256 = "398c02c3fcbf124480df342d15c7b4a3740c123264083e15faf38823e598f220";
        };
      r1 = {
        nix = import ../hackage/treap-0.0.0.0-r1-1f562fdf2835c13fc7f9b9313e779fd46a6b8ce0f2aa0dd0532f26eb81f892ba.nix;
        revNum = 1;
        sha256 = "1f562fdf2835c13fc7f9b9313e779fd46a6b8ce0f2aa0dd0532f26eb81f892ba";
        };
      default = "r1";
      };
    };
  }