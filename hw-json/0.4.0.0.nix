{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-json";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-json#readme";
        url = "";
        synopsis = "Memory efficient JSON parser";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-json = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.ansi-wl-pprint
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.dlist
            hsPkgs.hw-balancedparens
            hsPkgs.hw-bits
            hsPkgs.hw-conduit
            hsPkgs.hw-diagnostics
            hsPkgs.hw-mquery
            hsPkgs.hw-parser
            hsPkgs.hw-prim
            hsPkgs.hw-rankselect
            hsPkgs.hw-rankselect-base
            hsPkgs.mmap
            hsPkgs.mono-traversable
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.word8
          ];
        };
        exes = {
          hw-json-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.ansi-wl-pprint
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.dlist
              hsPkgs.hw-balancedparens
              hsPkgs.hw-bits
              hsPkgs.hw-conduit
              hsPkgs.hw-diagnostics
              hsPkgs.hw-json
              hsPkgs.hw-mquery
              hsPkgs.hw-parser
              hsPkgs.hw-prim
              hsPkgs.hw-rankselect
              hsPkgs.hw-rankselect-base
              hsPkgs.mmap
              hsPkgs.mono-traversable
              hsPkgs.resourcet
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.word8
            ];
          };
        };
        tests = {
          hw-json-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.conduit
              hsPkgs.hspec
              hsPkgs.hw-balancedparens
              hsPkgs.hw-bits
              hsPkgs.hw-conduit
              hsPkgs.hw-json
              hsPkgs.hw-prim
              hsPkgs.hw-rankselect
              hsPkgs.hw-rankselect-base
              hsPkgs.mmap
              hsPkgs.parsec
              hsPkgs.QuickCheck
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.criterion
              hsPkgs.hw-balancedparens
              hsPkgs.hw-bits
              hsPkgs.hw-conduit
              hsPkgs.hw-json
              hsPkgs.hw-prim
              hsPkgs.hw-rankselect
              hsPkgs.hw-rankselect-base
              hsPkgs.mmap
              hsPkgs.resourcet
              hsPkgs.vector
            ];
          };
        };
      };
    }