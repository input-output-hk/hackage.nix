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
      specVersion = "2.4";
      identifier = { name = "hasql-transaction-io"; version = "0.2.2.0"; };
      license = "MIT";
      copyright = "(c) 2022, 2023 Andre Marianiello";
      maintainer = "andremarianiello@users.noreply.github.com";
      author = "Andre Marianiello";
      homepage = "https://github.com/andremarianiello/hasql-transaction-io";
      url = "";
      synopsis = "Perform IO actions during transactions for Hasql";
      description = "Perform IO actions during transactions for Hasql. If you need transactions in hasql but do not need to perform IO in the middle of the transaction, use haslq-transaction. This packages differs from hasql-transaction in that it sacrifices invisible retries for the ability to perform arbitrary IO in the middle of a transaction. This is beneficial when your transaction is long-lived (e.g. when using cursors) and you wish to perform IO with requested data. See <https://hackage.haskell.org/package/hasql-streams-core hasql-streams-core> for an example use case.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-tree-builder" or (errorHandler.buildDepError "bytestring-tree-builder"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      };
    }