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
      identifier = { name = "language-sqlite"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Dan Knapp";
      maintainer = "dankna@gmail.com";
      author = "Dan Knapp";
      homepage = "http://dankna.com/software/";
      url = "";
      synopsis = "Full parser and generator for SQL as implemented by SQLite3";
      description = "This is a full parser and generator for SQL as implemented by SQLite3.\nIt is well-typed in the sense that it is possible to construct an\nabstract syntax tree if and only if it corresponds to valid SQL.\nVersion 1.1 adds support for parsing and generating type affinities.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        buildable = true;
      };
    };
  }