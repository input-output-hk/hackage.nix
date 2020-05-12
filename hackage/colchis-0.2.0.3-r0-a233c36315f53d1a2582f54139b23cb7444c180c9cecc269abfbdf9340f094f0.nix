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
      identifier = { name = "colchis"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Díaz Carrete";
      homepage = "";
      url = "";
      synopsis = "Rudimentary JSON-RPC 2.0 client over raw TCP. ";
      description = "Rudimentary JSON-RPC 2.0 client over raw TCP.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
          (hsPkgs."pipes-aeson" or (errorHandler.buildDepError "pipes-aeson"))
          (hsPkgs."pipes-network" or (errorHandler.buildDepError "pipes-network"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."conceit" or (errorHandler.buildDepError "conceit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }