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
      identifier = { name = "truthy"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "ⓒ 2022 Anselm Schüler";
      maintainer = "mail@anselmschueler.com";
      author = "Anselm Schüler";
      homepage = "https://github.com/schuelermine/truthy";
      url = "";
      synopsis = "Generalized booleans and truthy values.";
      description = "Generalized booleans and truthy values. See also: Boolean";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }