{
  "1.0.0.0" = {
    sha256 = "80fe4efc735e75d3d310d635cc3771aa840bd6064f32fd2221e9b94536e9aaa0";
    revisions = {
      r0 = {
        nix = import ../hackage/crypto-rng-effectful-1.0.0.0-r0-6397274a4a1f8cd9e2e1b8f83d1fc98f5bf18f1c7f0149616ac8dfab0cba0140.nix;
        revNum = 0;
        sha256 = "6397274a4a1f8cd9e2e1b8f83d1fc98f5bf18f1c7f0149616ac8dfab0cba0140";
      };
      r1 = {
        nix = import ../hackage/crypto-rng-effectful-1.0.0.0-r1-b211f809e791c73c3c7db1540c9df90ef4f05166839e201af8d27cb7bf53b2e9.nix;
        revNum = 1;
        sha256 = "b211f809e791c73c3c7db1540c9df90ef4f05166839e201af8d27cb7bf53b2e9";
      };
      r2 = {
        nix = import ../hackage/crypto-rng-effectful-1.0.0.0-r2-e0cf8812147b6e578ec9043bbda4fa6ba93f994d0ebd6b73a7576b3eb78deecb.nix;
        revNum = 2;
        sha256 = "e0cf8812147b6e578ec9043bbda4fa6ba93f994d0ebd6b73a7576b3eb78deecb";
      };
      r3 = {
        nix = import ../hackage/crypto-rng-effectful-1.0.0.0-r3-bff78615b403c543a6655ffd25ab6ef3b38fdabd483042c73ebbc85c876b07b3.nix;
        revNum = 3;
        sha256 = "bff78615b403c543a6655ffd25ab6ef3b38fdabd483042c73ebbc85c876b07b3";
      };
      default = "r3";
    };
  };
}