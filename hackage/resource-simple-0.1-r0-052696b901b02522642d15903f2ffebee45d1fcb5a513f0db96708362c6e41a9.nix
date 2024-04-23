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
      identifier = { name = "resource-simple"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anarchomorphism@seomraspraoi.org";
      author = "Robin Banks";
      homepage = "";
      url = "";
      synopsis = "Allocate resources which are guaranteed to be released.";
      description = "This is a simplified, standalone version of the @ResourceT@ transformer that\nwas originally developed as part of the @conduit@ package. That version of\n@ResourceT@ was supported by a complicated hierarchy of type classes, the\nmain purpose of which was to enable the usage of @ResourceT@ on top of the\n@ST@ monad. However, this doesn't really make much sense conceptually, and\nthe reason it was done is because conduits are very closely tied to\n@ResourceT@, and an instance for @ST@ would enable the usage of @ResourceT@\nin pure code.\n\nThis package completely does away with the supporting type class hierarchy,\nand as such, this version of @ResourceT@ can only be used with @IO@ or\n@IO@-like monads.\n\nThis package is motivated by a belief that the iteratee problem and the\nresource finalization problem are orthogonal. This package is ideal for\nusage with the @pipes@ library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-fork" or (errorHandler.buildDepError "monad-fork"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
        ];
        buildable = true;
      };
    };
  }