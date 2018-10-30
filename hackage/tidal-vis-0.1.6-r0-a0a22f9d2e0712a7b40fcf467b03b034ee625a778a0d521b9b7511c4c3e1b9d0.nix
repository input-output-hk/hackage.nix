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
      specVersion = "1.4";
      identifier = {
        name = "tidal-vis";
        version = "0.1.6";
      };
      license = "GPL-3.0-only";
      copyright = "(c) Alex McLean and others, 2014";
      maintainer = "alex@slab.org";
      author = "Alex McLean";
      homepage = "http://yaxu.org/tidal/";
      url = "";
      synopsis = "Visual rendering for Tidal patterns";
      description = "Tidal is a domain specific language for live coding pattern. This package allows colour patterns to be rendered as PDF or SVG files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tidal)
          (hsPkgs.colour)
          (hsPkgs.cairo)
        ];
      };
    };
  }