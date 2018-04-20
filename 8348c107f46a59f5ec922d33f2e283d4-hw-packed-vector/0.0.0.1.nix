{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-packed-vector";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-packed-vector#readme";
        url = "";
        synopsis = "Packed Vector";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-packed-vector = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hw-bits
            hsPkgs.hw-int
            hsPkgs.hw-prim
            hsPkgs.hw-string-parse
            hsPkgs.safe
            hsPkgs.vector
          ];
        };
        tests = {
          hw-packed-vector-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.hw-bits
              hsPkgs.hw-packed-vector
              hsPkgs.hw-prim
              hsPkgs.QuickCheck
              hsPkgs.vector
            ];
          };
        };
      };
    }