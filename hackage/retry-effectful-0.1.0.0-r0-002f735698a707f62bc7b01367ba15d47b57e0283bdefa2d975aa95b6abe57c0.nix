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
      identifier = { name = "retry-effectful"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Red Hat";
      maintainer = "tdecacqu@redhat.com";
      author = "Tristan de Cacqueray";
      homepage = "https://github.com/change-metrics/retry-effectful#readme";
      url = "";
      synopsis = "Adaptation of the retry library for the effectful ecosystem.";
      description = "Adaptation of the @<https://hackage.haskell.org/package/retry retry>@ library for the @<https://hackage.haskell.org/package/effectful effectful>@ ecosystem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
        ];
        buildable = true;
      };
      tests = {
        "retry-effectful-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."retry-effectful" or (errorHandler.buildDepError "retry-effectful"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }