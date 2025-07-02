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
      identifier = { name = "hoist-error"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 AlephCloud, Inc";
      maintainer = "sean.chalmers@data61.csiro.au";
      author = "Jon Sterling";
      homepage = "";
      url = "";
      synopsis = "Some convenience facilities for hoisting errors into a monad";
      description = "Provides a typeclass and useful combinators for hoisting errors into a monad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }