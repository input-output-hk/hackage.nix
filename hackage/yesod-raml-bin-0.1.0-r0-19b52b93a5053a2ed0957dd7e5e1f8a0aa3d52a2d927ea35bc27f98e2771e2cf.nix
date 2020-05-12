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
      identifier = { name = "yesod-raml-bin"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "junji.hashimoto";
      homepage = "";
      url = "";
      synopsis = "The raml helper executable.";
      description = "Provides html documentation and route file generator";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yesod-raml-bin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod-raml" or (errorHandler.buildDepError "yesod-raml"))
            (hsPkgs."yesod-raml-docs" or (errorHandler.buildDepError "yesod-raml-docs"))
            (hsPkgs."yesod-markdown" or (errorHandler.buildDepError "yesod-markdown"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }