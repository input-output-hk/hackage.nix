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
      identifier = { name = "tcache-AWS"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Alberto Gómez Corona";
      maintainer = "Alberto Gómez Corona";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "tcache  using Amazon Web Services as default persistence mechanism";
      description = "See examples in \"Data.TCache.AWS\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."TCache" or (errorHandler.buildDepError "TCache"))
          (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }