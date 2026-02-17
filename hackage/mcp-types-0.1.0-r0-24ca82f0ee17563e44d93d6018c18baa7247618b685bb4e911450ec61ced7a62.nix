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
      identifier = { name = "mcp-types"; version = "0.1.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2025 DPella AB";
      maintainer = "matti@dpella.io,\nlobo@dpella.io";
      author = "DPella AB";
      homepage = "https://github.com/DPella/mcp";
      url = "";
      synopsis = "Core types and protocol definitions for the Model Context Protocol (MCP)";
      description = "This library provides the core type definitions and JSON-RPC protocol layer\nfor the Model Context Protocol (MCP). MCP is a protocol that enables seamless\ncommunication between AI models and external tools, resources, and services.\n\nThis package contains only the pure protocol types with minimal dependencies,\nmaking it suitable for building both clients and servers on any framework.\nFor a ready-made Servant-based server, see the @mcp@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."jsonrpc" or (errorHandler.buildDepError "jsonrpc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test-mcp-types" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."jsonrpc" or (errorHandler.buildDepError "jsonrpc"))
            (hsPkgs."mcp-types" or (errorHandler.buildDepError "mcp-types"))
          ];
          buildable = true;
        };
      };
    };
  }