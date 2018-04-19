{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hw-prim";
          version = "0.4.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-prim#readme";
        url = "";
        synopsis = "Primitive functions and data types";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hw-prim = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.vector
          ];
        };
        tests = {
          hw-prim-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.hw-prim
              hsPkgs.QuickCheck
              hsPkgs.vector
            ];
          };
        };
      };
    }