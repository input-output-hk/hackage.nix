{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-msgpack";
          version = "0.0.9";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009-2016, Hideyuki Tanaka";
        maintainer = "Iphigenia Df <iphydf@gmail.com>";
        author = "Hideyuki Tanaka";
        homepage = "http://msgpack.org/";
        url = "";
        synopsis = "A Haskell implementation of MessagePack";
        description = "A Haskell implementation of MessagePack <http://msgpack.org/>\n\nThis is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,\nsince the original author is unreachable. This fork incorporates a number of\nbugfixes and is actively being developed.";
        buildType = "Simple";
      };
      components = {
        data-msgpack = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-binary-ieee754
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.void
          ];
        };
        exes = {
          msgpack-parser = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.groom
              hsPkgs.data-msgpack
            ];
          };
        };
        tests = {
          testsuite = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-msgpack
              hsPkgs.hashable
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.void
            ];
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.data-msgpack
              hsPkgs.deepseq
            ];
          };
        };
      };
    }