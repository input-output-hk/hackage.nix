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
      identifier = { name = "urbit-api"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Ben Sima";
      maintainer = "bsima@me.com";
      author = "Ben Sima";
      homepage = "https://github.com/bsima/haskell-urbit-api";
      url = "";
      synopsis = "Talk to Urbit from Haskell";
      description = "@urbit-api@ is a Haskell library that helps you connect to the Urbit\nAPI.\n\nBuilt on req, conduit, and aeson for stability and simplicity.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."req-conduit" or (errorHandler.buildDepError "req-conduit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }