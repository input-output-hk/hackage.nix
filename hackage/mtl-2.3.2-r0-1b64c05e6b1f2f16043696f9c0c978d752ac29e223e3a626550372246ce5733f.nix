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
      identifier = { name = "mtl"; version = "2.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Koz Ross <koz.ross@retro-freedom.nz>\nSteven Shuck <stevenjshuck@gmail.com>";
      author = "Andy Gill";
      homepage = "http://github.com/haskell/mtl";
      url = "";
      synopsis = "Monad classes for transformers, using functional dependencies";
      description = "MTL is a collection of monad classes, extending the 'transformers'\npackage, using functional dependencies for generic lifting of\nmonadic actions.";
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