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
      identifier = { name = "gruvbox-colors"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ccntrq@screenri.de";
      author = "Alexander 'ccntrq' Pankoff";
      homepage = "https://github.com/ccntrq/gruvbox-colors-hs";
      url = "";
      synopsis = "Gruvbox colors for use in Haskell";
      description = "See README.md at https://github.com/ccntrq/gruvbox-colors-hs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }