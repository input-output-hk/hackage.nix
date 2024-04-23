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
      identifier = { name = "spars"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "© Anselm David Schüler 2020";
      maintainer = "git@anselmschueler.com";
      author = "anselmschueler";
      homepage = "https://github.com/schuelermine/spars";
      url = "";
      synopsis = "A sparse set-based parsing library for Haskell.";
      description = "Spars is a lightweight parsing package that uses sets to store parse results to avoid duplicates.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }