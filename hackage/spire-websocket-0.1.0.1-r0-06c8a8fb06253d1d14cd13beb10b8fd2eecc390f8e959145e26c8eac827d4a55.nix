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
      specVersion = "3.12";
      identifier = { name = "spire-websocket"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Josh Burgess <joshburgess.webdev@gmail.com>";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/acolyte";
      url = "";
      synopsis = "Linear session-typed WebSocket protocols for spire";
      description = "Linear session types for WebSocket protocols. The phantom-typed\nSession handle enforces send/recv ordering at compile time via\nGHC's LinearTypes: each operation consumes the current session\nand produces the next state, so misuse is a type error.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."acolyte-core" or (errorHandler.buildDepError "acolyte-core"))
          (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
          (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."spire-websocket" or (errorHandler.buildDepError "spire-websocket"))
            (hsPkgs."acolyte-core" or (errorHandler.buildDepError "acolyte-core"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
          buildable = true;
        };
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."spire-websocket" or (errorHandler.buildDepError "spire-websocket"))
            (hsPkgs."acolyte-core" or (errorHandler.buildDepError "acolyte-core"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
          buildable = true;
        };
      };
    };
  }