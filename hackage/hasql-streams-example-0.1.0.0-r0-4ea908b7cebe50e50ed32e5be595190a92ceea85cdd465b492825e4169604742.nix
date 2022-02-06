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
      identifier = { name = "hasql-streams-example"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2022, Andre Marianiello";
      maintainer = "andremarianiello@users.noreply.github.com";
      author = "Andre Marianiello";
      homepage = "https://github.com/andremarianiello/hasql-streams";
      url = "";
      synopsis = "An example program that shows how to use Hasql streams with Rel8";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hasql-streaming" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."hasql-streams-conduit" or (errorHandler.buildDepError "hasql-streams-conduit"))
            (hsPkgs."hasql-streams-pipes" or (errorHandler.buildDepError "hasql-streams-pipes"))
            (hsPkgs."hasql-streams-streaming" or (errorHandler.buildDepError "hasql-streams-streaming"))
            (hsPkgs."hasql-streams-streamly" or (errorHandler.buildDepError "hasql-streams-streamly"))
            (hsPkgs."hasql-th" or (errorHandler.buildDepError "hasql-th"))
            (hsPkgs."hasql-transaction" or (errorHandler.buildDepError "hasql-transaction"))
            (hsPkgs."hasql-transaction-io" or (errorHandler.buildDepError "hasql-transaction-io"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."rel8" or (errorHandler.buildDepError "rel8"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            ];
          buildable = true;
          };
        };
      };
    }