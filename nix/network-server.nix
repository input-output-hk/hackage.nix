{
  "0.1.0" = {
    sha256 = "170f78f0ff95be2d9e3b9ad91d77f1bd1e184c70abf1872fe591823f798f6cfd";
    revisions = {
      r0 = {
        nix = import ../hackage/network-server-0.1.0-r0-ea46a3336aeb0fbdc36264940ff425ed1d781d70a8c51d685bf3292734a8e073.nix;
        revNum = 0;
        sha256 = "ea46a3336aeb0fbdc36264940ff425ed1d781d70a8c51d685bf3292734a8e073";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "b39b550ef66e0df0270d4df863980869ce06c9ba28a94d1acbe39575007f3246";
    revisions = {
      r0 = {
        nix = import ../hackage/network-server-0.2.0-r0-3c94ae685fce88c96a342233a05d1554d991a28e01aee86a626f33e635980e25.nix;
        revNum = 0;
        sha256 = "3c94ae685fce88c96a342233a05d1554d991a28e01aee86a626f33e635980e25";
      };
      default = "r0";
    };
  };
}