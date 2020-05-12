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
      specVersion = "1.8";
      identifier = { name = "azure-service-api"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "github.com/haskell-distributed/azure-service-api";
      url = "";
      synopsis = "Haskell bindings for the Microsoft Azure Service Management API";
      description = "At the moment, this module only provides minimal\nfunctionality, just enough to support the\n\"distributed-process-azure\" package (Azure backend for\nCloud Haskell). However, the code is set up in such a way\nthat adding additional functionality should be relatively\nstraightforward; developers who wish to do will probably\nwant to consult the Windows Azure Service Management REST\nAPI Reference\n(<http://msdn.microsoft.com/en-us/library/windowsazure/ee460799.aspx>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."tls-extra" or (errorHandler.buildDepError "tls-extra"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."certificate" or (errorHandler.buildDepError "certificate"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."hxt-xpath" or (errorHandler.buildDepError "hxt-xpath"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }