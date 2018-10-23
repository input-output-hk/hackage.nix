{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "buffer-builder";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "IMVU Inc., Chad Austin";
      maintainer = "chad@chadaustin.me";
      author = "Chad Austin";
      homepage = "https://github.com/chadaustin/buffer-builder";
      url = "";
      synopsis = "Library for efficiently building up buffers, one piece at a time";
      description = "'BufferBuilder' is an efficient library for incrementally building\nup 'ByteString's, one chunk at a time.  Early benchmarks show it\nis over twice as fast as ByteString Builder, primarily because\n'BufferBuilder' is built upon an ST-style restricted monad and\nmutable state instead of ByteString Builder's monoidal AST.\n\nInternally, BufferBuilder is backed by a few C functions.\nExamination of GHC's output shows nearly optimal code generation\nwith no intermediate thunks -- and thus, continuation passing and\nits associated indirect jumps and stack traffic only occur when\nBufferBuilder is asked to append a non-strict ByteString.\n\nI benchmarked four major implementations and benchmarked with the buildURL benchmark:\n\n* State monad, concatenating ByteStrings: __6.98 us__\n\n* State monad, ByteString Builder: __2.48 us__\n\n* Crazy explicit RealWorld baton passing with unboxed state: __28.94 us__ (GHC generated really awful code for this, but see the revision history for the technique)\n\n* C + FFI + ReaderT: __1.11 us__\n\nUsing BufferBuilder is very simple:\n\n> import qualified Data.BufferBuilder as BB\n>\n> let byteString = BB.runBufferBuilder \$ do\n>       BB.appendBS \"http\"\n>       BB.appendChar8 '/'\n>       BB.appendBS \"//\"";
      buildType = "Simple";
    };
    components = {
      "buffer-builder" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.buffer-builder)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-th)
            (hsPkgs.HUnit)
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
      };
    };
  }