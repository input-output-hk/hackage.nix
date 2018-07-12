{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "conduit";
          version = "1.1.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Streaming data processing library.";
        description = "@conduit@ is a solution to the streaming data problem, allowing for production, transformation, and consumption of streams of data in constant memory. It is an alternative to lazy I\\/O which guarantees deterministic resource handling, and fits in the same general solution space as @enumerator@\\/@iteratee@ and @pipes@. For a tutorial, please visit <https://haskell.fpcomplete.com/user/snoyberg/library-documentation/conduit-overview>.";
        buildType = "Simple";
      };
      components = {
        "conduit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.resourcet
            hsPkgs.exceptions
            hsPkgs.lifted-base
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.void
            hsPkgs.mmorph
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.conduit
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.resourcet
              hsPkgs.void
              hsPkgs.containers
            ];
          };
        };
        benchmarks = {
          "utf8-memory-usage" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text-stream-decode
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.conduit
            ];
          };
        };
      };
    }