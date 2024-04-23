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
      identifier = { name = "alloy"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2008-2009, 2012 University of Kent";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown and Adam Sampson";
      homepage = "";
      url = "";
      synopsis = "Generic programming library";
      description = "Alloy is a generic programming library for performing traversals\nof data and applying specific operations to certain types.  More\ninformation is available in the tutorial\n(<http://twistedsquare.com/Alloy-Tutorial.pdf>) and the draft\npaper (<http://twistedsquare.com/Alloy.pdf>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }