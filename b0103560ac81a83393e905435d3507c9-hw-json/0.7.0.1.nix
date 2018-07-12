{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hw-json";
          version = "0.7.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-json#readme";
        url = "";
        synopsis = "Memory efficient JSON parser";
        description = "Memory efficient JSON parser. Please see README.md";
        buildType = "Simple";
      };
      components = {
        "hw-json" = {
          depends  = [
            hsPkgs.ansi-wl-pprint
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.dlist
            hsPkgs.hw-balancedparens
            hsPkgs.hw-bits
            hsPkgs.hw-conduit
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
          "hw-json-example" = {
            depends  = [
              hsPkgs.ansi-wl-pprint
              hsPkgs.array
              hsPkgs.attoparsec
              hsPkgs.base
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
          "hw-json-test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.containers
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
              hsPkgs.resourcet
              hsPkgs.transformers
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          "bench" = {
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