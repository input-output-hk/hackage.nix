{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-msgpack";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009-2016, Hideyuki Tanaka";
        maintainer = "Iphigenia Df <iphydf@gmail.com>";
        author = "Hideyuki Tanaka";
        homepage = "http://msgpack.org/";
        url = "";
        synopsis = "A Haskell implementation of MessagePack";
        description = "A Haskell implementation of MessagePack <http://msgpack.org/>";
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
          ];
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
            ];
          };
        };
      };
    }