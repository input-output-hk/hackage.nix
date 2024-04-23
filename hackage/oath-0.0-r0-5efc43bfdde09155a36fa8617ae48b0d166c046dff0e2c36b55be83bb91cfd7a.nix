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
      specVersion = "2.4";
      identifier = { name = "oath"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2021 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "";
      url = "";
      synopsis = "Composable concurrent computation done right";
      description = "See README.md for details";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-delay" or (errorHandler.buildDepError "stm-delay"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."futures" or (errorHandler.buildDepError "futures"))
            (hsPkgs."unsafe-promises" or (errorHandler.buildDepError "unsafe-promises"))
            (hsPkgs."promise" or (errorHandler.buildDepError "promise"))
            (hsPkgs."oath" or (errorHandler.buildDepError "oath"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."oath" or (errorHandler.buildDepError "oath"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          ];
          buildable = true;
        };
      };
    };
  }