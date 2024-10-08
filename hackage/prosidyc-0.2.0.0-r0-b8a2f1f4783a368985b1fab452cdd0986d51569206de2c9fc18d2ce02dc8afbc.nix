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
    flags = { fatal-warnings = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "prosidyc"; version = "0.2.0.0"; };
      license = "MPL-2.0";
      copyright = "©2020 to James Alexander Feldman-Crough";
      maintainer = "alex@fldcr.com";
      author = "James Alexander Feldman-Crough";
      homepage = "";
      url = "";
      synopsis = "A DSL for processing Prosidy documents.";
      description = "A small, Haskell EDSL which builds a specification and compiler for\nProsidy dialects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."prosidy" or (errorHandler.buildDepError "prosidy"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
    };
  }