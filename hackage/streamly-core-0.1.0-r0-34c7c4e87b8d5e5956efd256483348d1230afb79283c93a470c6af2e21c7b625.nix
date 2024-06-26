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
    flags = {
      debug = false;
      dev = false;
      has-llvm = false;
      no-fusion = false;
      use-c-malloc = false;
      opt = true;
      limit-build-mem = false;
      use-unliftio = false;
      use-unfolds = false;
      use-folds = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "streamly-core"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Composewell Technologies";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies";
      homepage = "https://streamly.composewell.com";
      url = "";
      synopsis = "Streaming, parsers, arrays and more";
      description = "Streamly consists of two packages: \"streamly-core\" and \"streamly\".\n<https://hackage.haskell.org/package/streamly-core streamly-core>\nprovides basic features, and depends only on GHC boot libraries (see\nnote below), while\n<https://hackage.haskell.org/package/streamly streamly> provides\nhigher-level features like concurrency, time, lifted exceptions,\nand networking. For documentation, visit the\n<https://streamly.composewell.com Streamly website>.\n\nThis package provides streams, arrays, parsers, unicode text, file\nIO, and console IO functionality.\n\nNote: The dependencies \"heaps\" and \"monad-control\" are included in\nthe package solely for backward compatibility, and will be removed in\nfuture versions.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."fusion-plugin-types" or (errorHandler.buildDepError "fusion-plugin-types"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
        ] ++ pkgs.lib.optional (!flags.use-unliftio) (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"));
        buildable = true;
      };
    };
  }