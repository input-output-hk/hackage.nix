{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "diagrams-rubiks-cube";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "2015-2017 Tim Baumann";
      maintainer = "tim@timbaumann.info";
      author = "Tim Baumann";
      homepage = "https://github.com/timjb/rubiks-cube";
      url = "";
      synopsis = "Library for drawing the Rubik's Cube.";
      description = "Includes a facets model of the Rubik's Cube and a 'diagrams'-based renderer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.diagrams-lib)
          (hsPkgs.lens)
          (hsPkgs.data-default-class)
          (hsPkgs.distributive)
          (hsPkgs.adjunctions)
        ];
      };
    };
  }