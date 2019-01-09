{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "tidal-midi"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "(c) Alex McLean and other contributors, 2015";
      maintainer = "Alex McLean <alex@slab.org>, Mike Hodnick <mike.hodnick@gmail.com>";
      author = "Alex McLean";
      homepage = "http://tidal.lurk.org/";
      url = "";
      synopsis = "MIDI support for tidal";
      description = "Initial MIDI support for Tidal. Currently only supports Volca Keys and Bass synths, and interface is likely to change significantly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.tidal)
          (hsPkgs.PortMidi)
          (hsPkgs.process)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.hosc)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          ];
        };
      };
    }