{
  "1.0" = {
    sha256 = "2e46711ddb39dc16c32672ab884b06ca99bc7361b88360d0f9fe031b5a0c154b";
    revisions = {
      r0 = {
        nix = import ../hackage/http-slim-1.0-r0-d6619079dc0c2902df1b34e5bf35bde46a8f20b1adbcbfa1d723997739a96448.nix;
        revNum = 0;
        sha256 = "d6619079dc0c2902df1b34e5bf35bde46a8f20b1adbcbfa1d723997739a96448";
      };
      r1 = {
        nix = import ../hackage/http-slim-1.0-r1-b0bd2371f2babbf28a1c496b49f92351278c5ad648640d197862540861617769.nix;
        revNum = 1;
        sha256 = "b0bd2371f2babbf28a1c496b49f92351278c5ad648640d197862540861617769";
      };
      r2 = {
        nix = import ../hackage/http-slim-1.0-r2-4c84d472ca9ba0009cf991a5fdb71dbf73364d2fd33d85f9655a1a81aada4b03.nix;
        revNum = 2;
        sha256 = "4c84d472ca9ba0009cf991a5fdb71dbf73364d2fd33d85f9655a1a81aada4b03";
      };
      default = "r2";
    };
  };
  "1.2" = {
    sha256 = "795f5370ebf58f9c9f7866e78efcf446465f95aaf2359be71137dd843ca5aad8";
    revisions = {
      r0 = {
        nix = import ../hackage/http-slim-1.2-r0-973f6c49ec200eb3156eb4e056b1022ddec6ac0fe405d6ed4c2fdb51d70e5fc7.nix;
        revNum = 0;
        sha256 = "973f6c49ec200eb3156eb4e056b1022ddec6ac0fe405d6ed4c2fdb51d70e5fc7";
      };
      default = "r0";
    };
  };
}