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
      specVersion = "1.6";
      identifier = { name = "uxadt"; version = "0.0.13.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Andrei Lapets <lapets@bu.edu>";
      author = "Andrei Lapets";
      homepage = "";
      url = "";
      synopsis = "Universal (cross-language) extensible representation for algebraic data type instances.";
      description = "A library that supports a universal, cross-platform embedded representation for algebraic data type (ADT) values.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          ];
        buildable = true;
        };
      };
    }