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
      specVersion = "3.0";
      identifier = { name = "typed-session"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "shangdizhixia1993@163.com";
      author = "sdzx-1";
      homepage = "";
      url = "";
      synopsis = "typed session framework";
      description = "Typed session are used to ensure desirable properties in concurrent and distributed systems,\ni.e. absence of communication errors or deadlocks, and protocol conformance.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."typed-session-state-algorithm" or (errorHandler.buildDepError "typed-session-state-algorithm"))
        ];
        buildable = true;
      };
      tests = {
        "typed-session-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-session" or (errorHandler.buildDepError "typed-session"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-sim" or (errorHandler.buildDepError "io-sim"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."fused-effects-random" or (errorHandler.buildDepError "fused-effects-random"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }