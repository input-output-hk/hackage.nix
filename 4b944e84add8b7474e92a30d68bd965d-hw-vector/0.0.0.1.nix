{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-vector";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-vector#readme";
        url = "";
        synopsis = "Vector type with convenient typeclass instances";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-vector = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hw-prim
            hsPkgs.vector
          ];
        };
        tests = {
          hw-vector-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hw-vector
              hsPkgs.QuickCheck
              hsPkgs.vector
            ];
          };
        };
      };
    }