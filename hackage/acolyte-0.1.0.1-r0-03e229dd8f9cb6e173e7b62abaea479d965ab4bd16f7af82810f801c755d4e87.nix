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
      identifier = { name = "acolyte"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Josh Burgess <joshburgess.webdev@gmail.com>";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/acolyte";
      url = "";
      synopsis = "Composable, type-safe web framework for Haskell";
      description = "A web framework where the API is a type, middleware is tracked at\ncompile time, and the backend is pluggable. Re-exports all common\ntypes from the component packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."acolyte-core" or (errorHandler.buildDepError "acolyte-core"))
          (hsPkgs."acolyte-server" or (errorHandler.buildDepError "acolyte-server"))
          (hsPkgs."acolyte-client" or (errorHandler.buildDepError "acolyte-client"))
          (hsPkgs."acolyte-openapi" or (errorHandler.buildDepError "acolyte-openapi"))
          (hsPkgs."acolyte-grpc" or (errorHandler.buildDepError "acolyte-grpc"))
          (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
          (hsPkgs."spire-http" or (errorHandler.buildDepError "spire-http"))
          (hsPkgs."spire-server" or (errorHandler.buildDepError "spire-server"))
          (hsPkgs."spire-grpc" or (errorHandler.buildDepError "spire-grpc"))
          (hsPkgs."spire-websocket" or (errorHandler.buildDepError "spire-websocket"))
          (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
        ];
        buildable = true;
      };
    };
  }