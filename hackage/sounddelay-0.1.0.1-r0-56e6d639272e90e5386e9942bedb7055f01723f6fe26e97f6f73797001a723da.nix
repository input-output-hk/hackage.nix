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
        name = "sounddelay";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "http://github.com/BartMassey/sounddelay";
      url = "";
      synopsis = "Audio delay line";
      description = "An audio file delay line for WAVE files.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "delay" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.parseargs)
            (hsPkgs.WAVE)
          ];
        };
      };
    };
  }