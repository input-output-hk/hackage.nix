{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-eliasfano";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-eliasfano#readme";
        url = "";
        synopsis = "Conduits for tokenizing streams.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-eliasfano = {
          depends  = [
            hsPkgs.base
            hsPkgs.hw-bits
            hsPkgs.hw-prim
            hsPkgs.safe
            hsPkgs.vector
          ];
        };
        tests = {
          hw-eliasfano-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hw-bits
              hsPkgs.hw-eliasfano
              hsPkgs.hw-prim
              hsPkgs.QuickCheck
              hsPkgs.vector
            ];
          };
        };
      };
    }