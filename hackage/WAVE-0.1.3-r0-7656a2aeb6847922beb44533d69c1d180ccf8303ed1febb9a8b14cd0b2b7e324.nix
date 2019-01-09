{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "WAVE"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Bart Massey";
      maintainer = "Bart Massey <bart@cs.pdx.edu>";
      author = "Bart Massey <bart@cs.pdx.edu>";
      homepage = "http://github.com/BartMassey/WAVE";
      url = "";
      synopsis = "WAVE audio file IO library";
      description = "Module for reading and writing audio files in WAVE format.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.bytestring) ]; };
      exes = {
        "sinewave" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.WAVE)
            (hsPkgs.parseargs)
            ];
          };
        };
      };
    }