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
    flags = { lib-werror = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "retry-io-classes"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Ozgun Ataman, Soostone Inc";
      maintainer = "srk@48.io";
      author = "Ozgun Ataman";
      homepage = "http://github.com/sorki/retry-io-classes";
      url = "";
      synopsis = "Retry combinators for monadic actions that may fail (io-classes port)";
      description = "This is a port of original [retry](https://hackage.haskell.org/package/retry)\npackage compatible with [io-classes](https://hackage.haskell.org/package/io-classes).\n\nThis package exposes combinators that can wrap arbitrary\nmonadic actions. They run the action and potentially retry\nrunning it with some configurable delay for a configurable\nnumber of times.\n\nThe purpose is to make it easier to work with IO and\nespecially network IO actions that often experience temporary\nfailure and warrant retrying of the original action. For\nexample, a database query may time out for a while, in which\ncase we should hang back for a bit and retry the query instead\nof simply raising an exception.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-classes".components.sublibs.mtl or (errorHandler.buildDepError "io-classes:mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }