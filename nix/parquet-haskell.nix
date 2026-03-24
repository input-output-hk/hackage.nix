{
  "0.1.0.0" = {
    sha256 = "be8b6627ba45b18da795cc3fdf5aedc61241bf55cd2d440e2d3c81d74457430a";
    revisions = {
      r0 = {
        nix = import ../hackage/parquet-haskell-0.1.0.0-r0-bd710627e33bb0c483901251fe2382085764552edc6942d973c613d629b188b5.nix;
        revNum = 0;
        sha256 = "bd710627e33bb0c483901251fe2382085764552edc6942d973c613d629b188b5";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "80ff271f79d5315cbba3f42dd70d240814352d46f3b6e0e46089a0b2f31d191e";
    revisions = {
      r0 = {
        nix = import ../hackage/parquet-haskell-0.1.1.0-r0-68ad83b3bbae6aa738b171239154acdb5f5226fad1827107fea305a9f6156717.nix;
        revNum = 0;
        sha256 = "68ad83b3bbae6aa738b171239154acdb5f5226fad1827107fea305a9f6156717";
      };
      default = "r0";
    };
  };
}