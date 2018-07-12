{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conduit-algorithms";
          version = "0.0.7.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Luis Pedro Coelho";
        author = "Luis Pedro Coelho";
        homepage = "https://github.com/luispedro/conduit-algorithms#readme";
        url = "";
        synopsis = "Conduit-based algorithms";
        description = "Algorithms on Conduits, including higher level asynchronous processing and some other utilities.";
        buildType = "Simple";
      };
      components = {
        "conduit-algorithms" = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.bytestring
            hsPkgs.bzlib-conduit
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.lzma-conduit
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.stm
            hsPkgs.stm-conduit
            hsPkgs.vector
            hsPkgs.transformers
          ];
        };
        tests = {
          "conduit-algorithms-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.bzlib-conduit
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.lzma-conduit
              hsPkgs.mtl
              hsPkgs.resourcet
              hsPkgs.stm
              hsPkgs.stm-conduit
              hsPkgs.vector
              hsPkgs.transformers
              hsPkgs.directory
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }