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
      opt = true;
      limit-build-mem = false;
      use-unliftio = false;
      use-unfolds = false;
      use-folds = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "streamly-core"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Composewell Technologies";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies";
      homepage = "https://streamly.composewell.com";
      url = "";
      synopsis = "Streaming, parsers, arrays, serialization and more";
      description = "For upgrading to streamly-0.9.0+ please read the\n<https://github.com/composewell/streamly/blob/streamly-0.10.0/docs/User/Project/Upgrading-0.8-to-0.9.md Streamly-0.9.0 upgrade guide>.\n\nStreamly is a standard library for Haskell that focuses on C-like\nperformance, modular combinators, and streaming data flow model.\nStreamly consists of two packages: \"streamly-core\" and \"streamly\".\n<https://hackage.haskell.org/package/streamly-core streamly-core>\nprovides basic features, and depends only on GHC boot libraries (see\nnote below), while\n<https://hackage.haskell.org/package/streamly streamly> provides\nhigher-level features like concurrency, time, lifted exceptions,\nand networking. For documentation, visit the\n<https://streamly.composewell.com Streamly website>.\n\nThe streamly-core package provides the following functionality:\n\n* Streams as composable producers of a sequence of values.\n* Streams provide all the functionality provided by Haskell lists but\nin an effectful, streaming fashion with better performance.\n* Streams provide ListT and logic programming functionality as well.\n* Folds as composable stream consumers that reduce the streams to a\nsingle value or reduce segments of streams to transform the stream.\n* Parsers as more powerful, composable stream consumers supporting\nstandard parser combinators with backtracking but in a streaming\nfashion.\n* Arrays with streaming interfaces providing high performance,\nmodularity, and concise interface as all streaming operations can be\nperformed on arrays.\n* Arrays can be immutable or mutable, unboxed or boxed, pinned or\nunpinned.\n* Arrays generalize the functionality provided by @bytestring@ and\n@text@ packages.\n* Interoperability with @bytestring@ and @text@ is\nprovided via separate packages.\n* Arrays and folds provide natural builder functionality so there are no\nseparate builder modules.\n* High performance binary serialization with configurable JSON like features.\n* Streaming combinators for unicode text processing, providing\nfunctionality equivalent to the @text@ package.\n* String interpolation for convenient construction of strings.\n* Streaming console IO (stdin/stdout) operations.\n* Streaming file and directory IO operations.\n\nThis package covers some or all of the functionality covered\nby @streaming, pipes, conduit, list-t, logic-t, foldl, attoparsec,\narray, primitive, vector, vector-algorithms, binary, cereal, store,\nbytestring, text, stringsearch, interpolate@. Streamly provides a\nconsistent, concise, modular and performant interface for all this\nfunctionality.\n\nNote: The dependencies \"heaps\" and \"monad-control\" are included in\nthe package solely for backward compatibility, and will be removed in\nfuture versions.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = ((([
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
        ] ++ (if compiler.isGhc && compiler.version.ge "9.0"
          then [
            (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
          ]
          else [
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          ])) ++ pkgs.lib.optional (!flags.use-unliftio) (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))) ++ pkgs.lib.optional (system.isLinux || system.isOsx) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        buildable = true;
      };
    };
  }