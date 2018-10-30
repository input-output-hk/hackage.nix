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
        name = "truelevel";
        version = "0.1.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2006-2014 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "http://github.com/BartMassey/truelevel";
      url = "";
      synopsis = "Audio file compressor-limiter";
      description = "An audio file compressor / limiter.  This\nprogram will adjust the dynamic range of a WAVE file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "truelevel" = {
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