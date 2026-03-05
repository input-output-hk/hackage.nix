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
      specVersion = "3.0";
      identifier = { name = "eventlog-socket-control"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025-2026 Well-Typed";
      maintainer = "wen@well-typed.com";
      author = "Eventlog Socket Contributors";
      homepage = "";
      url = "";
      synopsis = "Control command protocol for eventlog-socket.";
      description = "The @eventlog-socket-control@ package contains utilities for creating messages for @eventlog-socket@'s control command protocol.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }