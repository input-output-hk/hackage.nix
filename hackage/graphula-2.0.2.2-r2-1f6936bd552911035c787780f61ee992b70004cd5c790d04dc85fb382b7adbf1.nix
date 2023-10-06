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
    flags = { persistent-template = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "graphula"; version = "2.0.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Freckle Education";
      author = "";
      homepage = "https://github.com/freckle/graphula#readme";
      url = "";
      synopsis = "A simple interface for generating persistent data and linking its dependencies";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."generics-eot" or (errorHandler.buildDepError "generics-eot"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."generics-eot" or (errorHandler.buildDepError "generics-eot"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      tests = {
        "readme" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-arbitrary" or (errorHandler.buildDepError "generic-arbitrary"))
            (hsPkgs."graphula" or (errorHandler.buildDepError "graphula"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            ] ++ (pkgs.lib).optional (flags.persistent-template) (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"));
          buildable = true;
          };
        };
      };
    }