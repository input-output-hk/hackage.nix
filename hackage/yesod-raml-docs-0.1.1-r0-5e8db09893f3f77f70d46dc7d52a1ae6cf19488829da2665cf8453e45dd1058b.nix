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
      identifier = { name = "yesod-raml-docs"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "junji.hashimoto";
      homepage = "";
      url = "";
      synopsis = "A html documentation generator library for RAML.";
      description = "A html documentation generator library for RAML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod-raml" or (errorHandler.buildDepError "yesod-raml"))
          (hsPkgs."yesod-markdown" or (errorHandler.buildDepError "yesod-markdown"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }