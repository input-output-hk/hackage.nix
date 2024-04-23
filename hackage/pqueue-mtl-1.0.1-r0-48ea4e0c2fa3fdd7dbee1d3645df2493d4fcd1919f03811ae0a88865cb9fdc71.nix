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
      specVersion = "1.0";
      identifier = { name = "pqueue-mtl"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Fully encapsulated monad transformers with queuelike functionality.";
      description = "Contains several implementations of data structures implementing a /single-in, single-out/ paradigm, and implements monad transformers for their safe use.  The monad transformer part of the library includes tools to fully encapsulate single-threaded use of a priority queue in a monad, including an array-based heap implementation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stateful-mtl" or (errorHandler.buildDepError "stateful-mtl"))
          (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
        ];
        buildable = true;
      };
    };
  }