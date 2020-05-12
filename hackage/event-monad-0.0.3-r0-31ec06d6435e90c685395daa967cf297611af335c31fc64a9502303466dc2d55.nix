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
      specVersion = "1.2";
      identifier = { name = "event-monad"; version = "0.0.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/event-monad";
      url = "";
      synopsis = "Event-graph simulation monad transformer";
      description = "An interface for and simple implementation of an\nevent-graph simulation system as a monad transformer,\nas well as a version using mutable state references\nfor performance and for concurrency support.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."event-handlers" or (errorHandler.buildDepError "event-handlers"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
          (hsPkgs."priority-queue" or (errorHandler.buildDepError "priority-queue"))
          (hsPkgs."stateref" or (errorHandler.buildDepError "stateref"))
          ];
        buildable = true;
        };
      };
    }