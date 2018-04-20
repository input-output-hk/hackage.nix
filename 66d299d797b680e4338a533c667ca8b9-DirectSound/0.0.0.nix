{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "DirectSound";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Balazs Komuves";
        maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
        author = "Balazs Komuves";
        homepage = "http://code.haskell.org/~bkomuves/";
        url = "";
        synopsis = "Partial binding to the Microsoft DirectSound API.";
        description = "Partial binding to the Microsoft DirectSound API.\nSee the example program for a simple stereo playback.";
        buildType = "Simple";
      };
      components = {
        DirectSound = {
          depends  = [ hsPkgs.Win32 ] ++ [
            hsPkgs.base
          ];
          libs = [ pkgs.dsound ];
        };
      };
    }