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
      specVersion = "1.8";
      identifier = { name = "GroteTrap"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2016 Jeroen Leeuwestein and Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Jeroen Leeuwestein, Martijn van Steenbergen";
      homepage = "http://www.haskell.org/haskellwiki/GroteTrap";
      url = "";
      synopsis = "Parser and selection library for expression languages.";
      description = "Allows quick definition of expression languages. You get a parser for free, as well as conversion from text selection to tree selection and back.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."GroteTrap" or (errorHandler.buildDepError "GroteTrap"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }