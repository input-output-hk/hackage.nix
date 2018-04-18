{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "WAVE";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2007 Bart Massey";
        maintainer = "Bart Massey <bart@cs.pdx.edu>";
        author = "Bart Massey <bart@cs.pdx.edu>";
        homepage = "http://wiki.cs.pdx.edu/bartforge/wave";
        url = "";
        synopsis = "WAVE audio file IO library";
        description = "Module for reading and writing audio files in the WAVE audio format.";
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