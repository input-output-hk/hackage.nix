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
      identifier = { name = "typerbole"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Fionan Haralddottir";
      maintainer = "ma302fh@gold.ac.uk";
      author = "Fionan Haralddottir";
      homepage = "";
      url = "";
      synopsis = "A typeystems library with exaggerated claims";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
        buildable = true;
        };
      exes = {
        "typerbole-diagrams" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            ];
          buildable = true;
          };
        };
      tests = {
        "typerbole-testing" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
            (hsPkgs."typerbole" or (errorHandler.buildDepError "typerbole"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ];
          buildable = true;
          };
        };
      };
    }