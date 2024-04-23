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
      specVersion = "2.2";
      identifier = { name = "unsatisfiable"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>, Adam Gundry";
      homepage = "";
      url = "";
      synopsis = "Unsatisfiable type class";
      description = "This package provides a\n\n@\nclass Unsatisfiable (msg :: TypeError)\n@\n\nand\n\n@\nunsatisfiable :: forall msg a. Unsatisfiable msg => a\n@\n\ncombinator.\n\nThere is also a plugin which\n\n* Pretty-prints @msg@s of /wanted/ @Unsatisfiable@, and\n* Solves all other constraints if there is /given/ @Unsatisfiable@\n\nThe plugin also works with @-fdefer-type-errors@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
    };
  }