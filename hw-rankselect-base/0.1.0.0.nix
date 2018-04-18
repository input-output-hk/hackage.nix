{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-rankselect-base";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-rankselect-base#readme";
        url = "";
        synopsis = "Conduits for tokenizing streams.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-rankselect-base = {
          depends  = [
            hsPkgs.base
            hsPkgs.hw-bits
            hsPkgs.hw-prim
            hsPkgs.hw-string-parse
            hsPkgs.safe
            hsPkgs.vector
          ];
        };
        tests = {
          hw-rankselect-base-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hw-bits
              hsPkgs.hw-prim
              hsPkgs.hw-rankselect-base
              hsPkgs.QuickCheck
              hsPkgs.vector
            ];
          };
        };
      };
    }