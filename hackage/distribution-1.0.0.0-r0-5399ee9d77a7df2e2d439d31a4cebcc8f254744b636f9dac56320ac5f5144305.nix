{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "distribution"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright 2014 Romain Edelmann";
      maintainer = "romain.edelmann@gmail.com";
      author = "Romain Edelmann";
      homepage = "https://github.com/redelmann/haskell-distribution";
      url = "";
      synopsis = "Finite discrete probability distributions.";
      description = "Package for manipulating finite discrete probability distributions. Supports transformations, measurements, efficient sampling and plotting.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }