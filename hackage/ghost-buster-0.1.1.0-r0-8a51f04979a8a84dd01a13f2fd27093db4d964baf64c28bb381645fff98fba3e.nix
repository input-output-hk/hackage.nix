{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghost-buster"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Sam Quinn";
      maintainer = "lazersmoke@gmail.com";
      author = "Sam Quinn";
      homepage = "https://github.com/Lazersmoke/ghost-buster#readme";
      url = "";
      synopsis = "Existential type utilites";
      description = "This package provides utilities for working with existential types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."ghost-buster" or ((hsPkgs.pkgs-errors).buildDepError "ghost-buster"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }