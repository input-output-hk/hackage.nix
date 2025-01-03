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
    flags = { nointeractivetests = false; zlib = true; network = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "io-streams"; version = "1.5.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Collins <greg@gregorycollins.net>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Simple, composable, and easy-to-use stream I/O";
      description = "/Overview/\n\nThe io-streams library contains simple and easy-to-use primitives for I/O\nusing streams. Most users will want to import the top-level convenience\nmodule \"System.IO.Streams\", which re-exports most of the library:\n\n@\nimport           System.IO.Streams (InputStream, OutputStream)\nimport qualified System.IO.Streams as Streams\n@\n\nFor first-time users, @io-streams@ comes with an included tutorial, which can\nbe found in the \"System.IO.Streams.Tutorial\" module.\n\n/Features/\n\nThe @io-streams@ user API has two basic types: @InputStream a@ and\n@OutputStream a@, and three fundamental I/O primitives:\n\n@\n\\-\\- read an item from an input stream\nStreams.read :: InputStream a -> IO (Maybe a)\n\n\\-\\- push an item back to an input stream\nStreams.unRead :: a -> InputStream a -> IO ()\n\n\\-\\- write to an output stream\nStreams.write :: Maybe a -> OutputStream a -> IO ()\n@\n\nStreams can be transformed by composition and hooked together with provided combinators:\n\n@\nghci> Streams.fromList [1,2,3::Int] >>= Streams.map (*10) >>= Streams.toList\n[10,20,30]\n@\n\nStream composition leaves the original stream accessible:\n\n@\nghci> input \\<- Streams.fromByteString \\\"long string\\\"\nghci> wrapped \\<- Streams.takeBytes 4 input\nghci> Streams.read wrapped\nJust \\\"long\\\"\nghci> Streams.read wrapped\nNothing\nghci> Streams.read input\nJust \\\" string\\\"\n@\n\nSimple types and operations in the IO monad mean straightforward and simple\nexception handling and resource cleanup using Haskell standard library\nfacilities like 'Control.Exception.bracket'.\n\n@io-streams@ comes with:\n\n* functions to use files, handles, concurrent channels, sockets, lists,\nvectors, and more as streams.\n\n* a variety of combinators for wrapping and transforming streams, including\ncompression and decompression using zlib, controlling precisely how many\nbytes are read from or written to a stream, buffering output using\nbytestring builders, folds, maps, filters, zips, etc.\n\n* support for parsing from streams using @attoparsec@.\n\n* support for spawning processes and communicating with them using streams.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))) ++ pkgs.lib.optional (flags.zlib) (hsPkgs."zlib-bindings" or (errorHandler.buildDepError "zlib-bindings"))) ++ pkgs.lib.optional (flags.network) (hsPkgs."network" or (errorHandler.buildDepError "network"));
        buildable = true;
      };
      tests = {
        "testsuite" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ] ++ pkgs.lib.optionals (flags.zlib) [
            (hsPkgs."zlib-bindings" or (errorHandler.buildDepError "zlib-bindings"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ]) ++ pkgs.lib.optional (flags.network) (hsPkgs."network" or (errorHandler.buildDepError "network"))) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"));
          buildable = true;
        };
      };
    };
  }