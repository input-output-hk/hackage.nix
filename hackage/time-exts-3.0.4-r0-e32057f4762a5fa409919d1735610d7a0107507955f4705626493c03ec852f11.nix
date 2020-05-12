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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "time-exts"; version = "3.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2013-2017 Enzo Haussecker";
      maintainer = "Enzo Haussecker <enzo@sovereign.io>";
      author = "Enzo Haussecker <enzo@sovereign.io>";
      homepage = "https://github.com/enzoh/time-exts";
      url = "";
      synopsis = "Yet another time library";
      description = "A stand-alone time library implementing Unix and UTC timestamps with varying granularity.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lens-simple" or (errorHandler.buildDepError "lens-simple"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tz" or (errorHandler.buildDepError "tz"))
          ];
        buildable = true;
        };
      tests = {
        "time-exts-unit-tests" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."ieee754" or (errorHandler.buildDepError "ieee754"))
            (hsPkgs."lens-simple" or (errorHandler.buildDepError "lens-simple"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tz" or (errorHandler.buildDepError "tz"))
            ];
          buildable = true;
          };
        };
      };
    }