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
      identifier = { name = "prelude-plus"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yusaku Hashimoto <nonowarn@gmail.com>";
      author = "Yusaku Hashimoto";
      homepage = "";
      url = "";
      synopsis = "Prelude for rest of us";
      description = "> import Prelude ()\n> import Prelude.Plus\n> -- then some useful modules and couple of generic functions\n> -- are available in your code";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = if flags.test then false else true;
        };
      exes = {
        "test" = {
          depends = [
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = if !flags.test then false else true;
          };
        };
      };
    }