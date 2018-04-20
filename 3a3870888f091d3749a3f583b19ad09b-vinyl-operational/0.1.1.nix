{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vinyl-operational";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "http://github.com/andrewthad/vinyl-operational#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        vinyl-operational = {
          depends  = [
            hsPkgs.base
            hsPkgs.vinyl-plus
            hsPkgs.operational
            hsPkgs.operational-extra
          ];
        };
      };
    }