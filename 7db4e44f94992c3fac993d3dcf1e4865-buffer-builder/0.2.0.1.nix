{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "buffer-builder";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "IMVU Inc., Chad Austin, Andy Friesen";
      maintainer = "chad@chadaustin.me";
      author = "Chad Austin, Andy Friesen";
      homepage = "https://github.com/chadaustin/buffer-builder";
      url = "";
      synopsis = "Library for efficiently building up buffers, one piece at a time";
      description = "\"Data.BufferBuilder\" is an efficient library for incrementally building\nup 'ByteString's, one chunk at a time.  Early benchmarks show it\nis over twice as fast as ByteString Builder, primarily because\n'BufferBuilder' is built upon an ST-style restricted monad and\nmutable state instead of ByteString Builder's monoidal AST.\n\nInternally, BufferBuilder is backed by a few C functions.\nExamination of GHC's output shows nearly optimal code generation\nwith no intermediate thunks -- and thus, continuation passing and\nits associated indirect jumps and stack traffic only occur when\nBufferBuilder is asked to append a non-strict ByteString.\n\nI benchmarked four approaches with a URL encoding benchmark:\n\n* State monad, concatenating ByteStrings: 6.98 us\n\n* State monad, ByteString Builder: 2.48 us\n\n* Crazy explicit RealWorld baton passing with unboxed state: 28.94 us (GHC generated really awful code for this, but see the revision history for the technique)\n\n* C + FFI + ReaderT: 1.11 us\n\nUsing BufferBuilder is very simple:\n\n> import qualified Data.BufferBuilder as BB\n>\n> let byteString = BB.runBufferBuilder \$ do\n>       BB.appendBS \"http\"\n>       BB.appendChar8 '/'\n>       BB.appendBS \"//\"\n\nThis package also provides \"Data.BufferBuilder.Utf8\" for generating UTF-8 buffers\nand \"Data.BufferBuilder.Json\" for encoding data structures into JSON.";
      buildType = "Simple";
    };
    components = {
      "buffer-builder" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.buffer-builder)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-th)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.HUnit)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.aeson)
          ];
        };
        "tinyjson" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.buffer-builder)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
          ];
        };
        "tinyjson2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.buffer-builder)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.buffer-builder)
            (hsPkgs.criterion)
          ];
        };
        "json-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.buffer-builder)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.vector)
            (hsPkgs.criterion)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }