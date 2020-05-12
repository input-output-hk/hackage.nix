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
      identifier = { name = "azure-servicebus"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Hemanth Kapila (c) 2014-2015";
      maintainer = "saihemanth@gmail.com";
      author = "Hemanth Kapila";
      homepage = "https://github.com/kapilash/hs-azure";
      url = "";
      synopsis = "Windows Azure ServiceBus API";
      description = "Haskell wrappers over Windows Azure ServiceBus API.         ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."azure-acs" or (errorHandler.buildDepError "azure-acs"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          ];
        buildable = true;
        };
      };
    }