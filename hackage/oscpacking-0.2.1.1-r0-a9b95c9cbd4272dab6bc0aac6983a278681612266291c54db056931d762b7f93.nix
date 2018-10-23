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
        version = "0.2.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ch.howard@zoho.com";
      author = "Christopher Howard";
      homepage = "";
      url = "";
      synopsis = "Implements an osculatory packing (kissing circles) algorithm and display.";
      description = "Implements the simple algorithm for packing an area with circles that are\n'mutually tangent'. Also provides functions for displaying as a picture or\nan animation.";
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