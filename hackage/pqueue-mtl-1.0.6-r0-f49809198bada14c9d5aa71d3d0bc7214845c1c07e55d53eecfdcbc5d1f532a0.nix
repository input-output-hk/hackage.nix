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
      identifier = { name = "pqueue-mtl"; version = "1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Fully encapsulated monad transformers with queuelike functionality.";
      description = "Contains several implementations of data structures implementing a /single-in, single-out/ paradigm,\nand implements monad transformers for their safe use.  The monad transformer part of the library\nincludes tools to fully encapsulate single-threaded use of a priority queue in a monad, including an\narray-based heap implementation.\nIn general, the purely functional queue types can be ordered in increasing order of speed on generic insertion/deletion operations\nas follows: 'Stack', 'Queue', 'PQueue', 'IntQueue', 'SkewQueue', 'FQueue', 'Heap'.\n('PQueue', 'IntQueue', and 'SkewQueue' are all very nearly the same speed.)\nWork is in progress on a van Emde Boas\nor y-fast priority queue implementation, which provides sublogarithmic functionality for all operations.";
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
          (hsPkgs."uvector" or (errorHandler.buildDepError "uvector"))
        ];
        buildable = true;
      };
    };
  }