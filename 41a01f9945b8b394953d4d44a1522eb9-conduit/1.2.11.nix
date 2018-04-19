{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "conduit";
          version = "1.2.11";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Streaming data processing library.";
        description = "`conduit` is a solution to the streaming data problem, allowing for production,\ntransformation, and consumption of streams of data in constant memory. It is an\nalternative to lazy I\\/O which guarantees deterministic resource handling.\n\nFor more information about conduit in general, and how this package in\nparticular fits into the ecosystem, see [the conduit\nhomepage](https://github.com/snoyberg/conduit#readme).\n\nHackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/conduit>.";
        buildType = "Simple";
      };
      components = {
        conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.resourcet
            hsPkgs.exceptions
            hsPkgs.lifted-base
            hsPkgs.transformers-base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.mmorph
            hsPkgs.monad-control
            hsPkgs.primitive
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.void;
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.conduit
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.resourcet
              hsPkgs.containers
              hsPkgs.exceptions
              hsPkgs.safe
              hsPkgs.split
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.void;
          };
        };
        benchmarks = {
          optimize-201408 = {
            depends  = [
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.vector
              hsPkgs.deepseq
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.hspec
              hsPkgs.mwc-random
              hsPkgs.criterion
              hsPkgs.kan-extensions
            ];
          };
          unfused = {
            depends  = [
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.criterion
              hsPkgs.transformers
            ];
          };
        };
      };
    }