{
  "0.0.1.0" = {
    sha256 = "ccb0d7750bed0de844c43a6720a3d57ffa7d61f96f580e33af82a71faa1bde4f";
    revisions = {
      r0 = {
        nix = import ../hackage/composite-ix-0.0.1.0-r0-7a3a153b241ddea7ddd5c07bcd828df4b62bfe3dff36a1be3264109ffbea087c.nix;
        revNum = 0;
        sha256 = "7a3a153b241ddea7ddd5c07bcd828df4b62bfe3dff36a1be3264109ffbea087c";
      };
      r1 = {
        nix = import ../hackage/composite-ix-0.0.1.0-r1-e120935bb3b6c64ba7f976446a4f8ee3fb24383e30c1906025e64212d02af0d9.nix;
        revNum = 1;
        sha256 = "e120935bb3b6c64ba7f976446a4f8ee3fb24383e30c1906025e64212d02af0d9";
      };
      default = "r1";
    };
  };
}