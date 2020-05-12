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
      identifier = { name = "has"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Yusaku Hashimoto 2010";
      maintainer = "Yusaku Hashimoto <nonowarn@gmail.com>";
      author = "Yusaku Hashimoto";
      homepage = "http://github.com/nonowarn/has";
      url = "";
      synopsis = "Generic Haskell's Record Accessors";
      description = "Usage: <http://github.com/nonowarn/has/blob/master/README.md>\n\nAnd its test would be helpful: <http://github.com/nonowarn/has/blob/master/test/Main.hs>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
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