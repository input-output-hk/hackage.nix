{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "WAVE";
          version = "0.1.2";
        };
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
        WAVE = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }