{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "astro"; version = "0.4.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Alexander Ignatyev";
      maintainer = "Alexander Ignatyev";
      author = "Alexander Ignatyev";
      homepage = "https://github.com/aligusnet/astro";
      url = "";
      synopsis = "Amateur astronomical computations";
      description = "Amateur astronomical computations: rise and set times and azimuths,\ncoordinates, distances, angular sizes and other parameters\nof the Sun, the Moon, planets and stars.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
          ];
        buildable = true;
        };
      tests = {
        "astro-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."astro" or ((hsPkgs.pkgs-errors).buildDepError "astro"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }