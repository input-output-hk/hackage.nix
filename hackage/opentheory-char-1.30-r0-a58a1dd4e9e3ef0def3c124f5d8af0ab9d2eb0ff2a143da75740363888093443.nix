{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.6";
      identifier = { name = "opentheory-char"; version = "1.30"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Hurd <joe@gilith.com>";
      author = "Joe Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Unicode characters";
      description = "Unicode characters\nAutomatically generated from the opentheory package haskell-char-1.30";
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
          (hsPkgs."opentheory-parser" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-parser"))
          ];
        buildable = true;
        };
      exes = {
        "opentheory-char-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
            (hsPkgs."opentheory" or ((hsPkgs.pkgs-errors).buildDepError "opentheory"))
            (hsPkgs."opentheory-parser" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-parser"))
            ];
          buildable = true;
          };
        };
      };
    }