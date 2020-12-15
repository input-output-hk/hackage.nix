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
      identifier = { name = "katip-raven"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "domen@hercules-ci.com";
      author = "Domen Kozar";
      homepage = "https://github.com/hercules-ci/katip-raven";
      url = "";
      synopsis = "Katip scribe for raven (https://sentry.io)";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."katip" or (errorHandler.buildDepError "katip"))
          (hsPkgs."raven-haskell" or (errorHandler.buildDepError "raven-haskell"))
          (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }