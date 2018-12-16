{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      debug = true;
      nohandles = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "conduit";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/conduit";
      url = "";
      synopsis = "Streaming data processing library.";
      description = "Conduits are an approach to the streaming data problem. It is meant as an alternative to enumerators\\/iterators, hoping to address the same issues with different trade-offs based on real-world experience with enumerators. For more information, see <http://www.yesodweb.com/book/conduit>.\n\nRelease history:\n\n* 0.1: @BufferedSource@ is now an abstract type, and has a much more efficient internal representation. The result was a 41% speedup on microbenchmarks (note: do not expect speedups anywhere near that in real usage). In general, we are moving towards @BufferedSource@ being a specific tool used internally as needed, but using @Source@ for all external APIs.\n\n* 0.0: Initial release.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.conduit)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.text)
          ];
        };
      };
    };
  }