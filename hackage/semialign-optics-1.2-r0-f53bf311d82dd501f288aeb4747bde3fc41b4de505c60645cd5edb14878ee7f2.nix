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
      specVersion = "1.22";
      identifier = { name = "semialign-optics"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "C. McCann, Oleg Grenrus";
      homepage = "https://github.com/haskellari/these";
      url = "";
      synopsis = "SemialignWithIndex, i.e. izipWith and ialignWith";
      description = "This package is deprecated.\nIt simply re-exports [semialign](https://hackage.haskell.org/package/semialign)\n(and adds a @optics-core@ constraint).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
        ];
        buildable = true;
      };
    };
  }