{
  "2.0" = {
    sha256 = "2c6db29b29031d8028b9e01b1c381b3395fc5fdcf05b8fe90880baf2a12f8747";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-mediatailor-2.0-r0-7cd6c837e5e5ff56804c2957cb6f419d9b4dadd10c258b59129defd6eecfbb9e.nix;
        revNum = 0;
        sha256 = "7cd6c837e5e5ff56804c2957cb6f419d9b4dadd10c258b59129defd6eecfbb9e";
      };
      r1 = {
        nix = import ../hackage/amazonka-mediatailor-2.0-r1-9e678a3305fd8d6f5ced7292a8133174b8c1fdee2d1258159c6b5ac7700d8e72.nix;
        revNum = 1;
        sha256 = "9e678a3305fd8d6f5ced7292a8133174b8c1fdee2d1258159c6b5ac7700d8e72";
      };
      default = "r1";
    };
  };
}