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
      identifier = { name = "applicable"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "ⓒ 2022 Anselm Schüler";
      maintainer = "mail@anselmschueler.com";
      author = "Anselm Schüler";
      homepage = "https://github.com/schuelermine/applicable";
      url = "";
      synopsis = "A class for things that can be applied";
      description = "A class for things that can be applied, and utility newtypes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }