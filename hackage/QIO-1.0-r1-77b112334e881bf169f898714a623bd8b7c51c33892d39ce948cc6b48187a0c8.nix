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
      specVersion = "1.2";
      identifier = { name = "QIO"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Alexander S. Green";
      homepage = "http://www.cs.nott.ac.uk/~asg/QIO/";
      url = "";
      synopsis = "The Quantum IO Monad is a library for defining quantum computations in Haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
        buildable = true;
        };
      };
    }