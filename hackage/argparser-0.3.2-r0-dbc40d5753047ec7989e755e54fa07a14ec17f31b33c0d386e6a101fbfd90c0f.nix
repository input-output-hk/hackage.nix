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
      identifier = { name = "argparser"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Bergot <simon.bergot@gmail.com>";
      author = "Simon Bergot <simon.bergot@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Command line parsing framework for console applications";
      description = "Provides a combinator library for defining a command line parser.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "TestsHTF" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."argparser" or (errorHandler.buildDepError "argparser"))
            ];
          buildable = true;
          };
        };
      };
    }