{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "JackMiniMix";
          version = "0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "renick (at) gmail.com";
        author = "Renick Bell";
        homepage = "http://www.renickbell.net/doku.php?id=jackminimix";
        url = "";
        synopsis = "control JackMiniMix";
        description = "This is a module to control JackMiniMix, a GPL mixer for the Jack Audio Connection Kit using OpenSoundControl (OSC).";
        buildType = "Simple";
      };
      components = {
        JackMiniMix = {
          depends  = [
            hsPkgs.base
            hsPkgs.hosc
          ];
        };
      };
    }