{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-rankselect";
          version = "0.4.0.0";
        };
        license = "MIT";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-rankselect#readme";
        url = "";
        synopsis = "Conduits for tokenizing streams.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-rankselect = {
          depends  = [
            hsPkgs.base
            hsPkgs.hw-bits
            hsPkgs.hw-prim
            hsPkgs.hw-string-parse
            hsPkgs.safe
            hsPkgs.vector
          ];
        };
        exes = {
          hw-rankselect-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.hw-rankselect
            ];
          };
        };
        tests = {
          hw-rankselect-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hw-bits
              hsPkgs.hw-prim
              hsPkgs.hw-rankselect
              hsPkgs.QuickCheck
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
              hsPkgs.hw-bits
              hsPkgs.hw-prim
              hsPkgs.hw-rankselect
              hsPkgs.mmap
              hsPkgs.vector
            ];
          };
        };
      };
    }