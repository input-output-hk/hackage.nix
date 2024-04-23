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
      identifier = { name = "mtl"; version = "2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chessai <chessai1996@gmail.com>, \nEmily Pillmore <emilypi@cohomolo.gy>, \nKoz Ross <koz.ross@retro-freedom.nz>";
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