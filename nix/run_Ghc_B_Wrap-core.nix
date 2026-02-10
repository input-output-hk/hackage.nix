{
  "0.1.0.0" = {
    sha256 = "27b5b7a1e5d58f20d5f23c9a1753bfbe2ce8e1f0f857aca7f5344a5804f49aca";
    revisions = {
      r0 = {
        nix = import ../hackage/runGhcBWrap-core-0.1.0.0-r0-8e3efd67d92a4d37b3e4749143d5a1a921db491442dc28c54b3bad8e25365a2b.nix;
        revNum = 0;
        sha256 = "8e3efd67d92a4d37b3e4749143d5a1a921db491442dc28c54b3bad8e25365a2b";
      };
      r1 = {
        nix = import ../hackage/runGhcBWrap-core-0.1.0.0-r1-8394948b55cb3530b740ec220d9b70b0eedb2af53609879d904b4fd662ec75ec.nix;
        revNum = 1;
        sha256 = "8394948b55cb3530b740ec220d9b70b0eedb2af53609879d904b4fd662ec75ec";
      };
      default = "r1";
    };
  };
}