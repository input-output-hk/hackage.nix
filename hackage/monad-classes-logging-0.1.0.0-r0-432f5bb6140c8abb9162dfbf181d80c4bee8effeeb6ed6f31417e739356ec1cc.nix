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
    flags = { feuerbach = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "monad-classes-logging"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Edward George";
      maintainer = "edwardgeorge@gmail.com";
      author = "Edward George";
      homepage = "https://github.com/edwardgeorge/monad-classes-logging#readme";
      url = "";
      synopsis = "monad-classes based typeclass for Ollie's logging-effect LoggingT";
      description = "monad-classes based typeclass for Ollie's logging-effect LoggingT";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ [
          (hsPkgs."monad-classes" or (errorHandler.buildDepError "monad-classes"))
        ];
        buildable = true;
      };
      tests = {
        "monad-classes-logging-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-effect" or (errorHandler.buildDepError "logging-effect"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."monad-classes-logging" or (errorHandler.buildDepError "monad-classes-logging"))
          ] ++ [
            (hsPkgs."monad-classes" or (errorHandler.buildDepError "monad-classes"))
          ];
          buildable = true;
        };
      };
    };
  }