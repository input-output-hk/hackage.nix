{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "colonnade";
          version = "0.4.7";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/colonnade#readme";
        url = "";
        synopsis = "Generic types and functions for columnar encoding and decoding";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        colonnade = {
          depends  = [
            hsPkgs.base
            hsPkgs.contravariant
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.colonnade
              hsPkgs.doctest
            ];
          };
        };
      };
    }