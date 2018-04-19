{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diagrams-rubiks-cube";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "2015-2016 Tim Baumann";
        maintainer = "tim@timbaumann.info";
        author = "Tim Baumann";
        homepage = "https://github.com/timjb/rubiks-cube";
        url = "";
        synopsis = "Library for drawing the Rubik's Cube.";
        description = "Includes a facets model of the Rubik's Cube and a 'diagrams'-based renderer.";
        buildType = "Simple";
      };
      components = {
        diagrams-rubiks-cube = {
          depends  = [
            hsPkgs.base
            hsPkgs.diagrams-lib
            hsPkgs.lens
            hsPkgs.data-default-class
            hsPkgs.distributive
            hsPkgs.adjunctions
          ];
        };
      };
    }