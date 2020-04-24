{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "opentheory-unicode"; version = "1.138"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Unicode characters";
      description = "Unicode characters - this package was automatically generated from the\nOpenTheory package char-1.138";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
          (hsPkgs."opentheory" or ((hsPkgs.pkgs-errors).buildDepError "opentheory"))
          (hsPkgs."opentheory-byte" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-byte"))
          (hsPkgs."opentheory-bits" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-bits"))
          (hsPkgs."opentheory-parser" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-parser"))
          (hsPkgs."opentheory-probability" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-probability"))
          ];
        buildable = true;
        };
      tests = {
        "opentheory-unicode-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."opentheory-primitive" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-primitive"))
            (hsPkgs."opentheory" or ((hsPkgs.pkgs-errors).buildDepError "opentheory"))
            (hsPkgs."opentheory-byte" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-byte"))
            (hsPkgs."opentheory-bits" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-bits"))
            (hsPkgs."opentheory-parser" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-parser"))
            (hsPkgs."opentheory-probability" or ((hsPkgs.pkgs-errors).buildDepError "opentheory-probability"))
            ];
          buildable = true;
          };
        };
      };
    }