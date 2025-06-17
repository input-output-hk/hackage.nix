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
      specVersion = "3.4";
      identifier = { name = "haskell-bee-pgmq"; version = "0.1.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "gargantext@iscpif.fr";
      author = "Gargantext";
      homepage = "https://gitlab.iscpif.fr/gargantext/haskell-bee";
      url = "";
      synopsis = "PostgreSQL/PGMQ broker implementation for haskell-bee";
      description = "Please see the README on GitHub at <https://github.com/garganscript/haskell-bee/blob/master/haskell-bee-pgmq/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."haskell-pgmq" or (errorHandler.buildDepError "haskell-pgmq"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."units" or (errorHandler.buildDepError "units"))
          (hsPkgs."unix-time" or (errorHandler.buildDepError "unix-time"))
          (hsPkgs."haskell-bee" or (errorHandler.buildDepError "haskell-bee"))
        ];
        buildable = true;
      };
      exes = {
        "simple-worker" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."haskell-pgmq" or (errorHandler.buildDepError "haskell-pgmq"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."haskell-bee" or (errorHandler.buildDepError "haskell-bee"))
            (hsPkgs."haskell-bee-pgmq" or (errorHandler.buildDepError "haskell-bee-pgmq"))
          ];
          buildable = true;
        };
      };
      tests = {
        "pgmq-test-integration" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."random-strings" or (errorHandler.buildDepError "random-strings"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."haskell-bee" or (errorHandler.buildDepError "haskell-bee"))
            (hsPkgs."haskell-bee-tests" or (errorHandler.buildDepError "haskell-bee-tests"))
            (hsPkgs."haskell-bee-pgmq" or (errorHandler.buildDepError "haskell-bee-pgmq"))
          ];
          buildable = true;
        };
      };
    };
  }