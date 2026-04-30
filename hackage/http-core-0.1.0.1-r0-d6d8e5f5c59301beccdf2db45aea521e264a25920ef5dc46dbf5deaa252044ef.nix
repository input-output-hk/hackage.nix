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
      identifier = { name = "http-core"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Josh Burgess <joshburgess.webdev@gmail.com>";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/acolyte";
      url = "";
      synopsis = "Backend-agnostic HTTP request and response types";
      description = "Shared HTTP vocabulary types that are independent of any specific\nserver backend (warp, snap, etc.) or middleware framework.\n.\nThis is the Haskell equivalent of Rust's @http@ crate: a tiny,\nstable package defining Request and Response types that everyone\ndepends on. WAI, warp, and other backends are confined to adapter\npackages; this package knows nothing about them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ];
          buildable = true;
        };
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ];
          buildable = true;
        };
      };
    };
  }