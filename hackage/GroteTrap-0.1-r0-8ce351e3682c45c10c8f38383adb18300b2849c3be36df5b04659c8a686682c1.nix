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
      specVersion = "1.2";
      identifier = { name = "GroteTrap"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-2008 Jeroen Leeuwesteijn and Martijn van Steenbergen";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Jeroen Leeuwestein, Martijn van Steenbergen";
      homepage = "";
      url = "";
      synopsis = "GroteTrap";
      description = "Allows quick definition of expression languages. You get a parser for free, as well as conversion from text selection to tree selection and back.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }