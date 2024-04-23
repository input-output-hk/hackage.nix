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
      identifier = { name = "monad-task"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul Liu <paul@thev.net>";
      author = "Paul Liu";
      homepage = "http://github.com/ninegua/monad-task";
      url = "";
      synopsis = "A monad transformer that turns event processing into co-routine programming.";
      description = "Task monad transformer can help refactor event and callback\nheavy programs into monads via co-routines. The idea is loosely\nbased on /Combining Events And Threads For Scalable Network Services/,\nby Peng Li and Steve Zdancewic, in /PLDI/, 2007.\n(<http://www.cis.upenn.edu/~stevez/papers/abstracts.html#LZ07>), but\nwith deterministic and co-oprative lightweight threads, also known as\nco-routines, so that the base monad can be anything ranging from IO\nto state monads, or your favorite monad transformer stack.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }