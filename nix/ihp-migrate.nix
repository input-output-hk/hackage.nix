{
  "1.4.0" = {
    sha256 = "a83fde24a1fc92e8ff6d010135bc3c8d8be8a5dcfaeabc72735e598bed559bd0";
    revisions = {
      r0 = {
        nix = import ../hackage/ihp-migrate-1.4.0-r0-7ff7489bcb502cc5b978790d09ff4f7c3ca7c635af0c9a36c41d49b6bc152390.nix;
        revNum = 0;
        sha256 = "7ff7489bcb502cc5b978790d09ff4f7c3ca7c635af0c9a36c41d49b6bc152390";
      };
      default = "r0";
    };
  };
  "1.5.0" = {
    sha256 = "9931bb94d0f680233ab60aae0dccc05f6ffbfc50ff1af02cd71bbe8294ca52e4";
    revisions = {
      r0 = {
        nix = import ../hackage/ihp-migrate-1.5.0-r0-a651b60621d1a5507eb49e6b2a4d2d37d9b958749c5a33afd6907119fe729e98.nix;
        revNum = 0;
        sha256 = "a651b60621d1a5507eb49e6b2a4d2d37d9b958749c5a33afd6907119fe729e98";
      };
      default = "r0";
    };
  };
}