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
      identifier = { name = "glazier"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glazier#readme";
      url = "";
      synopsis = "Extensible effects using ContT, State and variants.";
      description = "Interpreting commmands with extensible effects using Cont/Concur monad, State, and variants.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."alternators" or (errorHandler.buildDepError "alternators"))
          (hsPkgs."data-diverse" or (errorHandler.buildDepError "data-diverse"))
          (hsPkgs."data-diverse-lens" or (errorHandler.buildDepError "data-diverse-lens"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      tests = {
        "glazier-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."alternators" or (errorHandler.buildDepError "alternators"))
            (hsPkgs."glazier" or (errorHandler.buildDepError "glazier"))
            (hsPkgs."data-diverse" or (errorHandler.buildDepError "data-diverse"))
            (hsPkgs."data-diverse-lens" or (errorHandler.buildDepError "data-diverse-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            ];
          buildable = true;
          };
        };
      };
    }