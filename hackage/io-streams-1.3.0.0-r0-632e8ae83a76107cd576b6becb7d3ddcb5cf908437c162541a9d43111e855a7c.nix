{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      nointeractivetests = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "io-streams";
        version = "1.3.0.0";
      };
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
      "io-streams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.network)
          (hsPkgs.primitive)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.zlib-bindings)
        ];
      };
      tests = {
        "testsuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.primitive)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.zlib-bindings)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }