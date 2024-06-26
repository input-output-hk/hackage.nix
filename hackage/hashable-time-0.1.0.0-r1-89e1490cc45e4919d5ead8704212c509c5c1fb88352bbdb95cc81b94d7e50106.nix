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
      identifier = { name = "hashable-time"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ankarakulov@gmail.com";
      author = "Alexey Karakulov";
      homepage = "https://github.com/w3rs/hashable-time";
      url = "";
      synopsis = "Hashable instances for Data.Time types and Fixed";
      description = "Default Hashable and derived Generic instances for most of Data.Time types (and Fixed). Only DiffTime and NominalDiffTime are Hashable, but not Generic (due to private constructors).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }