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
      identifier = { name = "servant-jsonrpc"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Bitnomial, Inc. (c) 2020";
      maintainer = "Ian Shipman <ics@gambolingpangolin.com>";
      author = "Ian Shipman <ics@gambolingpangolin.com>";
      homepage = "https://github.com/bitnomial/servant-jsonrpc";
      url = "";
      synopsis = "JSON-RPC messages and endpoints";
      description = "This module contains types that a programmer can use for JSON-RPC requests,\nserver responses, and errors.  It also contains two types which should be\nused in concert with servant to compose type level API specifications for\nJSON-RPC endpoints.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }