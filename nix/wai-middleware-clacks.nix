{
  "0.1.0.0" = {
    sha256 = "269629415a267758d758ccc1ec78f09d0b0e5c5ea1c6e3a7d1fae917fb0cb49e";
    revisions = {
      r0 = {
        nix = import ../hackage/wai-middleware-clacks-0.1.0.0-r0-3a36451a68edb23af6186b4c6054351d7ea1210b106570d44814e49cf2489665.nix;
        revNum = 0;
        sha256 = "3a36451a68edb23af6186b4c6054351d7ea1210b106570d44814e49cf2489665";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "0e46b6ae3118c1b7e3f414f1c2284f5b924e253fad339619472b721f7dc5a3d7";
    revisions = {
      r0 = {
        nix = import ../hackage/wai-middleware-clacks-0.1.0.1-r0-0e8218a03816012a5e6acb9bee9b014fbb8d87b9113faac851e3c553f3814d50.nix;
        revNum = 0;
        sha256 = "0e8218a03816012a5e6acb9bee9b014fbb8d87b9113faac851e3c553f3814d50";
      };
      r1 = {
        nix = import ../hackage/wai-middleware-clacks-0.1.0.1-r1-f9d86a8be3bb2dcc58ff8e31fdfa45d2c04482ec0a0952561420f85f47b446e0.nix;
        revNum = 1;
        sha256 = "f9d86a8be3bb2dcc58ff8e31fdfa45d2c04482ec0a0952561420f85f47b446e0";
      };
      default = "r1";
    };
  };
}