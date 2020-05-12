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
      identifier = { name = "consumers"; version = "2.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/consumers";
      url = "";
      synopsis = "Concurrent PostgreSQL data consumers";
      description = "Library for setting up concurrent consumers of data\nstored inside PostgreSQL database in a simple,\ndeclarative manner.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hpqtypes" or (errorHandler.buildDepError "hpqtypes"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."lifted-threads" or (errorHandler.buildDepError "lifted-threads"))
          (hsPkgs."log-base" or (errorHandler.buildDepError "log-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }