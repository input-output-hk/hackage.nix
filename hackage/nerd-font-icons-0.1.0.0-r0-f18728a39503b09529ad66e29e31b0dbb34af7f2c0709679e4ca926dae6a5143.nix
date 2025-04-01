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
      specVersion = "3.0";
      identifier = { name = "nerd-font-icons"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ccntrq@screenri.de";
      author = "Alexander 'ccntrq' Pankoff";
      homepage = "https://github.com/ccntrq/nerd-fonts-icons-hs";
      url = "";
      synopsis = "Nerd Font Icons for use in haskell";
      description = "The \\`Graphics.Icons.NerdFont\\` module simplifies using Nerd Fonts Icons in\nyour Haskell source code by providing constants for the icon code points.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }