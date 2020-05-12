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
      identifier = { name = "ihaskell-inline-r"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, Tweag I/O Limited.";
      maintainer = "Alexander Vershilov <alexander.vershilov@tweag.io>";
      author = "Mathieu Boespflug, Alexander Vershilov";
      homepage = "https://tweag.github.io/HaskellR/";
      url = "";
      synopsis = "Embed R quasiquotes and plots in IHaskell notebooks.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."inline-r" or (errorHandler.buildDepError "inline-r"))
          (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
          (hsPkgs."ihaskell-blaze" or (errorHandler.buildDepError "ihaskell-blaze"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
        buildable = true;
        };
      };
    }