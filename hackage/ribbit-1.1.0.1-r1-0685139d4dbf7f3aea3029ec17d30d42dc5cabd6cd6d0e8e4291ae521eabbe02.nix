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
      identifier = { name = "ribbit"; version = "1.1.0.1"; };
      license = "MIT";
      copyright = "2019 Owens Murray, LLC.";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/ribbit";
      url = "";
      synopsis = "[Unmaintained] Type-level Relational DB combinators.";
      description = "Notice: I am no longer maintaining this package. If you\nwould like to take it over please contact me.\nRibbit is yet another type safe relational database\nlibrary for Haskell, heavily inspired by the\namazing Servant library. The goal is to create a\ntype-level language for defining table schemas \"as\na type\", queries that operate on those schemas, and,\ntangentially, \"backends\" that can do something useful\nwith those types like talk to an actual database.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }