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
      identifier = { name = "hpqtypes-extras"; version = "1.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>";
      author = "Scrive";
      homepage = "https://github.com/scrive/hpqtypes-extras";
      url = "";
      synopsis = "Extra utilities for hpqtypes library";
      description = "The following extras for hpqtypes library:\n\n* DSL for easy, modular construction of SQL queries.\n\n* System for automatic validation and migration of a database schema.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."fields-json" or (errorHandler.buildDepError "fields-json"))
          (hsPkgs."hpqtypes" or (errorHandler.buildDepError "hpqtypes"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."log" or (errorHandler.buildDepError "log"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          ];
        buildable = true;
        };
      };
    }