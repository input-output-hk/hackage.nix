{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "container-builder";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/container-builder#readme";
        url = "";
        synopsis = "Functions for building containers from a known number of elements";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        container-builder = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }