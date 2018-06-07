{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      reduce-core-output = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hkt";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "eliaslfox@gmail.com";
        author = "Elias Lawson-Fox";
        homepage = "https://github.com/eliaslfox/hkt#readme";
        url = "";
        synopsis = "A library for higher kinded types.";
        description = "A library for building and manipulating higher kinded data types.";
        buildType = "Simple";
      };
      components = {
        hkt = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
          ];
        };
        tests = {
          main = {
            depends  = [
              hsPkgs.base
              hsPkgs.hkt
              hsPkgs.hspec
              hsPkgs.inspection-testing
              hsPkgs.protolude
              hsPkgs.text
            ];
          };
        };
      };
    }