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
      specVersion = "1.8";
      identifier = { name = "fay-text"; version = "0.3.1"; };
      license = "MIT";
      copyright = "2013 Michael Snoyman, Adam Bergmark";
      maintainer = "adam@bergmark.nl";
      author = "Michael Snoyman, Adam Bergmark";
      homepage = "https://github.com/faylang/fay-text";
      url = "";
      synopsis = "Fay Text type represented as JavaScript strings";
      description = "Text type represented as JavaScript strings for Fay and Data.Text for GHC. Use with OverloadedStrings and RebindableSyntax to have Fay treat string literals as Text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."fay" or (errorHandler.buildDepError "fay"))
          (hsPkgs."fay-base" or (errorHandler.buildDepError "fay-base"))
          ];
        buildable = true;
        };
      };
    }