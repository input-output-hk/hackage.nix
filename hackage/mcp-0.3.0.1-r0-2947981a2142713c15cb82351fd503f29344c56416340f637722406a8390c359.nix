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
      specVersion = "2.2";
      identifier = { name = "mcp"; version = "0.3.0.1"; };
      license = "MPL-2.0";
      copyright = "(c) 2025 DPella AB";
      maintainer = "matti@dpella.io,\nlobo@dpella.io";
      author = "DPella AB";
      homepage = "https://github.com/DPella/mcp";
      url = "";
      synopsis = "A Servant-based Model Context Protocol (MCP) server for Haskell";
      description = "This library provides a complete server implementation of the Model Context\nProtocol (MCP) for Haskell, built on Servant with JWT authentication via\n@servant-auth-server@. It re-exports the core protocol types from\n@mcp-types@ for convenience.\n\nMCP is a protocol that enables seamless communication between AI models and\nexternal tools, resources, and services. This implementation supports MCP\nprotocol version 2025-06-18 with full compatibility for resources, tools,\nprompts, completions, elicitation, and all standard MCP message types.\n\nThe server uses HTTP transport with streaming SSE responses at the @/mcp@\nendpoint. An extensible handler framework (@ProcessHandlers@, @ToolHandler@)\nallows implementing custom MCP servers with minimal boilerplate.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."mcp-types" or (errorHandler.buildDepError "mcp-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-auth-server" or (errorHandler.buildDepError "servant-auth-server"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "test-mcp" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."jose" or (errorHandler.buildDepError "jose"))
            (hsPkgs."mcp" or (errorHandler.buildDepError "mcp"))
            (hsPkgs."mcp-types" or (errorHandler.buildDepError "mcp-types"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-auth-server" or (errorHandler.buildDepError "servant-auth-server"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."wai-test" or (errorHandler.buildDepError "wai-test"))
          ];
          buildable = true;
        };
      };
    };
  }