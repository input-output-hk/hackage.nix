{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-json-lens";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "2016 Alexey Raga";
        maintainer = "alexey.raga@gmail.com";
        author = "Alexey Raga";
        homepage = "http://github.com/haskell-works/hw-json-lens#readme";
        url = "";
        synopsis = "Lens for hw-json";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "hw-json-lens" = {
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
            hsPkgs.hw-json
            hsPkgs.hw-parser
            hsPkgs.hw-prim
            hsPkgs.hw-rankselect
            hsPkgs.lens
            hsPkgs.mmap
            hsPkgs.mono-traversable
            hsPkgs.resourcet
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.word8
          ];
        };
        tests = {
          "hw-json-lens-test" = {
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
              hsPkgs.hw-json-lens
              hsPkgs.hw-prim
              hsPkgs.hw-rankselect
              hsPkgs.lens
              hsPkgs.mmap
              hsPkgs.parsec
              hsPkgs.QuickCheck
              hsPkgs.resourcet
              hsPkgs.scientific
              hsPkgs.transformers
              hsPkgs.unordered-containers
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
              hsPkgs.hw-bits
              hsPkgs.hw-conduit
              hsPkgs.hw-json-lens
              hsPkgs.hw-prim
              hsPkgs.hw-rankselect
              hsPkgs.lens
              hsPkgs.mmap
              hsPkgs.resourcet
              hsPkgs.scientific
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }