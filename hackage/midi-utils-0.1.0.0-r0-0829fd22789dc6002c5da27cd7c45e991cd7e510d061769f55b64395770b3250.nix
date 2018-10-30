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
      specVersion = "1.10";
      identifier = {
        name = "midi-utils";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2016 Ben Moon";
      maintainer = "guiltydolphin@gmail.com";
      author = "Ben Moon";
      homepage = "https://github.com/GuiltyDolphin/midi-utils";
      url = "";
      synopsis = "Utilities for working with MIDI data";
      description = "Utilities for working with MIDI data";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.event-list)
          (hsPkgs.midi)
          (hsPkgs.parsec)
          (hsPkgs.process)
        ];
      };
    };
  }