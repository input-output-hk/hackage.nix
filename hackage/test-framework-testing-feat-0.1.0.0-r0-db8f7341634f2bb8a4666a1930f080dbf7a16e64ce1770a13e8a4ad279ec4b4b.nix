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
      identifier = {
        name = "test-framework-testing-feat";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013 Jonathan Fischoff, Max Bolingbroke";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff, Max Bolingbroke <batterseapower@hotmail.com>";
      homepage = "http://github.com/jfischoff/test-framework-testing-feat";
      url = "";
      synopsis = "A test framework provider for testing-feat";
      description = "A test provider for testing-feat copied from test-framework-quickcheck2 by Max Bolingbroke";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."testing-feat" or (errorHandler.buildDepError "testing-feat"))
          ];
        buildable = true;
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."testing-feat" or (errorHandler.buildDepError "testing-feat"))
            ];
          buildable = true;
          };
        };
      };
    }