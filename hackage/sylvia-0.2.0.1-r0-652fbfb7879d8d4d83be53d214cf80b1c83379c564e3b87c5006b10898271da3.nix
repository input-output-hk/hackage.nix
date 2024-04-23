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
      identifier = { name = "sylvia"; version = "0.2.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "2011 Chris Wong";
      maintainer = "chrisyco@gmail.com";
      author = "Chris Wong";
      homepage = "https://github.com/lfairy/sylvia";
      url = "";
      synopsis = "Lambda calculus visualization";
      description = "The Simple Yuser-friendly Lambda Visualization Interaction Application (SYLVIA)\nis a unique way to manipulate untyped lambda calculus expressions, by\nrepresenting them as boxes connected by wires.\n\nIt is an implementation of an idea by Keenan (1996). See\n<http://dkeenan.com/Lambda> for the theory behind this application.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sylvia" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-smallcheck" or (errorHandler.buildDepError "test-framework-smallcheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          ];
          buildable = true;
        };
      };
    };
  }