{
  "0.0.0" = {
    sha256 = "69e9f7c8db66ba0dc45a780d3d04c13e22065e1cb1406b29b582d4aed59a681a";
    revisions = {
      r0 = {
        nix = import ../hackage/z85-0.0.0-r0-cf84acb9d9418c876c7d383a43b42aa77be41e6dee84cc6c7746c53771c459bc.nix;
        revNum = 0;
        sha256 = "cf84acb9d9418c876c7d383a43b42aa77be41e6dee84cc6c7746c53771c459bc";
      };
      r1 = {
        nix = import ../hackage/z85-0.0.0-r1-5d8ea861c7a68bc77a7b284b7e482af219a6f8d61850291e4fc4096081bc2641.nix;
        revNum = 1;
        sha256 = "5d8ea861c7a68bc77a7b284b7e482af219a6f8d61850291e4fc4096081bc2641";
      };
      default = "r1";
    };
  };
  "0.0.1" = {
    sha256 = "90e10f4b52ac8bd52c2ba8e073d2da89f1a31b363a199ec4659d4b9f9240a5de";
    revisions = {
      r0 = {
        nix = import ../hackage/z85-0.0.1-r0-b9d8ffb31e090d9cbf1e29a40c3eae34e90da9ebb877fa71bc22c0cce0e03194.nix;
        revNum = 0;
        sha256 = "b9d8ffb31e090d9cbf1e29a40c3eae34e90da9ebb877fa71bc22c0cce0e03194";
      };
      r1 = {
        nix = import ../hackage/z85-0.0.1-r1-a0262ec88f708bb90176f3ff258bad57bead8685ec94ee43807203fd5d1270c8.nix;
        revNum = 1;
        sha256 = "a0262ec88f708bb90176f3ff258bad57bead8685ec94ee43807203fd5d1270c8";
      };
      default = "r1";
    };
  };
  "0.0.2" = {
    sha256 = "1592e8988ecd85f3896f7a85de59b0a1aecb8679e674b2cb57fa08404745c573";
    revisions = {
      r0 = {
        nix = import ../hackage/z85-0.0.2-r0-a498a4ae735587ae3e2e427b4f7c5c54fe2c0b40bf91e19d4ca3ebb931dbb991.nix;
        revNum = 0;
        sha256 = "a498a4ae735587ae3e2e427b4f7c5c54fe2c0b40bf91e19d4ca3ebb931dbb991";
      };
      default = "r0";
    };
  };
}