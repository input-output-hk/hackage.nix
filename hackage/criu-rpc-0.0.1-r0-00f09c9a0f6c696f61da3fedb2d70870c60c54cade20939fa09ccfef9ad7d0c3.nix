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
      identifier = { name = "criu-rpc"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Stephen O'Brien";
      maintainer = "wayofthepie@gmail.com";
      author = "wayofthepie";
      homepage = "";
      url = "";
      synopsis = "CRIU RPC client.";
      description = "Low level client for the CRIU RPC API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."criu-rpc-types" or (errorHandler.buildDepError "criu-rpc-types"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }