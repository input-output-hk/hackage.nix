{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "oscpacking";
        version = "0.3.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ch.howard@zoho.com";
      author = "Christopher Howard";
      homepage = "";
      url = "";
      synopsis = "Implements an osculatory packing (kissing circles) algorithm and display.";
      description = "Implements the simple algorithm for packing an area with circles that are\n'mutually tangent' as well as functions for displaying the image on-screen.";
      buildType = "Simple";
    };
    components = {
      "oscpacking" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gloss)
          (hsPkgs.colour)
          (hsPkgs.random)
        ];
      };
    };
  }