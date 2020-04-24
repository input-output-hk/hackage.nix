{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tropical-geometry"; version = "0.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Fernando Zhapa";
      author = "Fernando Zhapa";
      homepage = "https://github.com/ferynando7/tropical-geometry#readme";
      url = "";
      synopsis = "A Tropical Geometry package for Haskell";
      description = "This package includes Tropical algebra and geometry stuff such as tropical numbers, tropical matrices, and tropical polynomials. Also you can find here an algorithm to compute tropical hypersurfaces for polynomials in two variables.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."algebra" or ((hsPkgs.pkgs-errors).buildDepError "algebra"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."semiring-simple" or ((hsPkgs.pkgs-errors).buildDepError "semiring-simple"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."sized" or ((hsPkgs.pkgs-errors).buildDepError "sized"))
          (hsPkgs."type-natural" or ((hsPkgs.pkgs-errors).buildDepError "type-natural"))
          ];
        buildable = true;
        };
      exes = {
        "tropical-geometry" = {
          depends = [
            (hsPkgs."tropical-geometry" or ((hsPkgs.pkgs-errors).buildDepError "tropical-geometry"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tropical-geometry-test-suite" = {
          depends = [
            (hsPkgs."tropical-geometry" or ((hsPkgs.pkgs-errors).buildDepError "tropical-geometry"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hlint-test" or ((hsPkgs.pkgs-errors).buildDepError "hlint-test"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "tropical-geometry-benchmarks" = {
          depends = [
            (hsPkgs."tropical-geometry" or ((hsPkgs.pkgs-errors).buildDepError "tropical-geometry"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }