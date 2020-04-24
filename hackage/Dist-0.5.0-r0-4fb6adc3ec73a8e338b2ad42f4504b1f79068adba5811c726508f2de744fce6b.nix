{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Dist"; version = "0.5.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "will.yager@gmail.com";
      author = "William Yager";
      homepage = "https://github.com/wyager/Dist";
      url = "";
      synopsis = "A Haskell library for probability distributions";
      description = "This library provides a data structure and associated functions for representing discrete probability distributions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }