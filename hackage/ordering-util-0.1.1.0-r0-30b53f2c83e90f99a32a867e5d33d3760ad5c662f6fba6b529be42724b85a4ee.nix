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
      identifier = { name = "ordering-util"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "ⓒ 2022 Anselm Schüler";
      maintainer = "mail@anselmschueler.com";
      author = "Anselm Schüler";
      homepage = "https://github.com/schuelermine/ordering-util";
      url = "";
      synopsis = "Utilities for Orderings";
      description = "Utilities for Ordering values (the type returned by compare)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }