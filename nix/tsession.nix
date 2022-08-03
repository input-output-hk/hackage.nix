{
  "0.1" = {
    sha256 = "331b5a38f9ec5ad66c3c8f6c47f7b0c5c4cbaa36f8a22e9931501cd1fc0e41e6";
    revisions = {
      r0 = {
        nix = import ../hackage/tsession-0.1-r0-47715f7cef026ebc6208e649acc8a4ddf6196e752c8d2408c8337e39b83e52c8.nix;
        revNum = 0;
        sha256 = "47715f7cef026ebc6208e649acc8a4ddf6196e752c8d2408c8337e39b83e52c8";
        };
      r1 = {
        nix = import ../hackage/tsession-0.1-r1-b44d0ed13ba5064067096aace360529daff2d3e00db2c6afb413af8331cfe6f7.nix;
        revNum = 1;
        sha256 = "b44d0ed13ba5064067096aace360529daff2d3e00db2c6afb413af8331cfe6f7";
        };
      r2 = {
        nix = import ../hackage/tsession-0.1-r2-afd89984a633388a2db5ad107968c92693527eb6f746318c4752993633705e57.nix;
        revNum = 2;
        sha256 = "afd89984a633388a2db5ad107968c92693527eb6f746318c4752993633705e57";
        };
      default = "r2";
      };
    };
  }