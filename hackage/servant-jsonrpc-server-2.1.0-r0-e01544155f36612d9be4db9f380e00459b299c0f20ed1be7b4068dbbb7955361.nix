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
      identifier = { name = "servant-jsonrpc-server"; version = "2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Bitnomial, Inc. (c) 2020";
      maintainer = "Ian Shipman <ics@gambolingpangolin.com>";
      author = "Ian Shipman <ics@gambolingpangolin.com>";
      homepage = "https://github.com/bitnomial/servant-jsonrpc";
      url = "";
      synopsis = "JSON-RPC servant servers";
      description = "Use this package to define a servant server which exposes JSON-RPC over HTTP endpoints.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-jsonrpc" or (errorHandler.buildDepError "servant-jsonrpc"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
        ];
        buildable = true;
      };
    };
  }