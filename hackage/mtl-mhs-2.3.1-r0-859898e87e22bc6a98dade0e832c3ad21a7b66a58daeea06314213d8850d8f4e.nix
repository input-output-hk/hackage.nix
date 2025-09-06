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
      identifier = { name = "mtl-mhs"; version = "2.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lennart@augustsson.net";
      author = "Andy Gill";
      homepage = "http://github.com/augustss/mtl-mhs";
      url = "";
      synopsis = "Monad classes for transformers, using functional dependencies";
      description = "== This package is a fork of 'mtl' with changes to make it compile with MicroHs.  \nMTL is a collection of monad classes, extending the 'transformers'\npackage, using functional dependencies for generic lifting of\nmonadic actions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }