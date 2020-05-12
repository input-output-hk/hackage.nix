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
      specVersion = "1.6.0.1";
      identifier = { name = "dingo-widgets"; version = "0.0.3.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Dingo Widgets";
      description = "This package contains a set of widgets for the Dingo Rich Internet Application platform.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dingo-core" or (errorHandler.buildDepError "dingo-core"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."shakespeare-js" or (errorHandler.buildDepError "shakespeare-js"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }