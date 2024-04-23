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
      identifier = { name = "hssqlppp-th"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2009-2014 Jake Wheat";
      maintainer = "jakewheatmail@gmail.com";
      author = "Jake Wheat";
      homepage = "http://jakewheat.github.com/hssqlppp/";
      url = "";
      synopsis = "hssqlppp extras which need template-haskell";
      description = "hssqlppp extras which need template-haskell\n\nDocumentation, examples on the homepage:\n<http://jakewheat.github.com/hssqlppp/>.\n\nChanges here: <https://github.com/JakeWheat/hssqlppp/blob/master/CHANGES>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."hssqlppp" or (errorHandler.buildDepError "hssqlppp"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "TestsTh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hssqlppp" or (errorHandler.buildDepError "hssqlppp"))
          ];
          buildable = true;
        };
      };
    };
  }