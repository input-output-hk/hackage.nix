{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.6";
      identifier = { name = "opentheory-prime"; version = "1.9"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Hurd <joe@gilith.com>";
      author = "Joe Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Prime numbers";
      description = "Prime numbers\nAutomatically generated from the opentheory package haskell-prime-1.9";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
          (hsPkgs."opentheory" or ((hsPkgs.pkgs-errors).buildDepError "opentheory"))
          ];
        buildable = true;
        };
      exes = {
        "opentheory-prime-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
            (hsPkgs."opentheory" or ((hsPkgs.pkgs-errors).buildDepError "opentheory"))
            ];
          buildable = true;
          };
        };
      };
    }