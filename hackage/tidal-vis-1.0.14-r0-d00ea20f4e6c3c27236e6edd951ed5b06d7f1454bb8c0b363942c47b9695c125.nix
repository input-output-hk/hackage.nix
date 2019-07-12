{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "tidal-vis"; version = "1.0.14"; };
      license = "GPL-3.0-only";
      copyright = "(c) Alex McLean and others, 2019";
      maintainer = "alex@slab.org";
      author = "Alex McLean";
      homepage = "http://yaxu.org/tidal/";
      url = "";
      synopsis = "Visual rendering for Tidal patterns and osc messages";
      description = "Tidal is a domain specific language for live coding pattern. This package allows colour patterns to be rendered as PDF or SVG files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.cairo)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.gloss)
          (hsPkgs.hashable)
          (hsPkgs.hosc)
          (hsPkgs.SDL)
          (hsPkgs.SDL-gfx)
          (hsPkgs.SDL-image)
          (hsPkgs.SDL-ttf)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.tidal)
          (hsPkgs.time)
          (hsPkgs.unagi-chan)
          ];
        };
      exes = {
        "tidal-vis" = { depends = [ (hsPkgs.base) (hsPkgs.tidal-vis) ]; };
        };
      };
    }