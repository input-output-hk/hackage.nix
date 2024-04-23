{
  "0.1.0.0" = {
    sha256 = "e8055a2d125d84eb861b3e3c9de5339552284957dcbef96053f56f7ef92cb131";
    revisions = {
      r0 = {
        nix = import ../hackage/text-position-0.1.0.0-r0-b7098d5e684fd22b1c6bc9a7a06292f65c8aa6efe9ee8472ade58f20697306e6.nix;
        revNum = 0;
        sha256 = "b7098d5e684fd22b1c6bc9a7a06292f65c8aa6efe9ee8472ade58f20697306e6";
      };
      r1 = {
        nix = import ../hackage/text-position-0.1.0.0-r1-45fd633a94e0a13dbaeeb1791725a72d185f54027569e967f8006f07df67d586.nix;
        revNum = 1;
        sha256 = "45fd633a94e0a13dbaeeb1791725a72d185f54027569e967f8006f07df67d586";
      };
      r2 = {
        nix = import ../hackage/text-position-0.1.0.0-r2-47ad75275f3f8f705336ebac8adc9af40682a530668e2e56655a243aa516c8e3.nix;
        revNum = 2;
        sha256 = "47ad75275f3f8f705336ebac8adc9af40682a530668e2e56655a243aa516c8e3";
      };
      default = "r2";
    };
  };
}