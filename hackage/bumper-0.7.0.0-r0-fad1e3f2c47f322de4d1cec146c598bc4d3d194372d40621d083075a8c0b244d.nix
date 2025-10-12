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
      specVersion = "3.4";
      identifier = { name = "bumper"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Silk";
      maintainer = "Artem Pelenitsyn <a@pelenitsyn.top>";
      author = "Silk";
      homepage = "http://github.com/ulysses4ever/bumper";
      url = "";
      synopsis = "Automatically bump package versions, also transitively.";
      description = "Bumper is a tool for working with cabal packages.\nIt lets you manage the version bounds of packages by transitively bumping packages\n(and their dependencies transitively), without you needing to edit the cabal files manually.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bumper" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
          buildable = true;
        };
      };
    };
  }