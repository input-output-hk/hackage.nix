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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "has"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) Yusaku Hashimoto 2010";
      maintainer = "Yusaku Hashimoto <nonowarn@gmail.com>";
      author = "Yusaku Hashimoto";
      homepage = "http://github.com/nonowarn/has";
      url = "";
      synopsis = "Entity based records";
      description = "Usage: <http://github.com/nonowarn/has/blob/master/README.md>\n\nAnd its examples and test would be helpful:\n\n* <http://github.com/nonowarn/has/tree/master/examples/>\n\n* <http://github.com/nonowarn/has/blob/master/test/Main.hs>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      exes = {
        "test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = if !flags.test then false else true;
          };
        };
      };
    }