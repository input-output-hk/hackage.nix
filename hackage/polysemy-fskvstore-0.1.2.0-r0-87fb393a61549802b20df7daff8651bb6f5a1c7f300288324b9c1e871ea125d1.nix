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
      specVersion = "1.12";
      identifier = { name = "polysemy-fskvstore"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Run a KVStore as a filesystem in polysemy.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-kvstore" or (errorHandler.buildDepError "polysemy-kvstore"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."unliftio-path" or (errorHandler.buildDepError "unliftio-path"))
          ];
        buildable = true;
        };
      };
    }