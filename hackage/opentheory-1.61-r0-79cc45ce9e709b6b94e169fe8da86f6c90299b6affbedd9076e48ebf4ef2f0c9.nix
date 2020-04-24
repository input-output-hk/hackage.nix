{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.6";
      identifier = { name = "opentheory"; version = "1.61"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Hurd <joe@gilith.com>";
      author = "Joe Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "The Haskell base";
      description = "The Haskell base\nAutomatically generated from the opentheory package haskell-1.61";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
          ];
        buildable = true;
        };
      exes = {
        "opentheory-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
            ];
          buildable = true;
          };
        };
      };
    }