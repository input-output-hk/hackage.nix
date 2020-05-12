{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { mpfr = true; mpfrrounded = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "aern2-mp"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2017 Michal Konecny";
      maintainer = "Michal Konecny <mikkonecny@gmail.com>";
      author = "Michal Konecny";
      homepage = "https://github.com/michalkonecny/aern2";
      url = "";
      synopsis = "Multi-precision floats via MPFR";
      description = "Arbitrary-precision dyadic numbers and interval arithmetic, via the types:\n\n* Dyadic:  variable-precision floats with exact ring operations\n\n* MPBall: float ± error bound with field & elementary (interval-like) operations\n\nBy default, using hmpfr when compiling with ghc >=7.10.  Older versions of ghc are no longer tested.\n\nSet flag MPFRRounded to bind MPFR not via hmpfr but via a tweaked version of package\nrounded:\n\n* https://github.com/claudeha/rounded/tree/claude\n\nThis backend is considerably faster than hmpfr.\nIt is likely to become the default in future.\n\nThere is a plan to add an Integer-only backend so that this library can\nbe used without MPFR.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
          ] ++ (pkgs.lib).optionals (flags.mpfr) (if compiler.isGhc && (compiler.version).ge "7.10"
          then if flags.mpfrrounded
            then [
              (hsPkgs."rounded" or (errorHandler.buildDepError "rounded"))
              ]
            else [
              (hsPkgs."hmpfr" or (errorHandler.buildDepError "hmpfr"))
              (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
              ]
          else [
            (hsPkgs."haskell-mpfr" or (errorHandler.buildDepError "haskell-mpfr"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            ]);
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }