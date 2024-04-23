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
      identifier = { name = "hextra"; version = "1.1.0.1"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "git@anselmschueler.com";
      author = "Anselm Schueler";
      homepage = "https://github.com/schuelermine/hextra";
      url = "";
      synopsis = "Generic and niche utility functions and more for Haskell.";
      description = "Hextra is a library containing useful functions etc. that I sometimes use.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }