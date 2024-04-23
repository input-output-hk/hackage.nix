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
      identifier = { name = "canteven-template"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "eglassercamp@sumall.com";
      author = "Ethan Glasser-Camp";
      homepage = "https://github.com/SumAll/haskell-canteven-template/";
      url = "";
      synopsis = "A few utilites and helpers for using Template Haskell in your projects.";
      description = "Provides a few \"batteries included\" functions for doing common things with Template Haskell.\nIn particular, adds 'readFileAsStrLiteral', which lets you use TH to access on-disk files at compile time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."markdown" or (errorHandler.buildDepError "markdown"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }