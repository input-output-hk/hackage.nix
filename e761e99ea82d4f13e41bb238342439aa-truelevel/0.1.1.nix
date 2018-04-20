{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "truelevel";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2006-2008 Bart Massey";
        maintainer = "Bart Massey <bart@cs.pdx.edu>";
        author = "Bart Massey <bart@cs.pdx.edu>";
        homepage = "http://wiki.cs.pdx.edu/bartforge/truelevel";
        url = "";
        synopsis = "Audio file compressor-limiter";
        description = "An audio file compressor / limiter.  This\nprogram will adjust the dynamic range of a WAVE file.";
        buildType = "Simple";
      };
      components = {
        exes = {
          truelevel = {
            depends  = [
              hsPkgs.base
              hsPkgs.WAVE
              hsPkgs.parseargs
            ];
          };
        };
      };
    }