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
      identifier = { name = "om-elm"; version = "1.0.0.1"; };
      license = "MIT";
      copyright = "2018 Owens Murray, LLC.";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/om-elm";
      url = "";
      synopsis = "Haskell utilities for building embedded Elm programs.";
      description = "This package provides utilities for serving Elm programs\ndirectly from your Haskell binary. It uses TemplateHaskell\nto compile your Elm program at build time, and construct a\nWAI Middleware which intercepts requests appropriate to\nthe Elm program, and passing other requests to a\ndownstream WAI Application. It is useful for bundling the\nbrowser side of a web application with its backing web\nservices implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
        buildable = true;
        };
      };
    }