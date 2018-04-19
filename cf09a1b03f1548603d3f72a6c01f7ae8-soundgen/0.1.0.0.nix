{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "soundgen";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "luca_ciciriello@hotmail.com";
        author = "Luca Ciciriello";
        homepage = "";
        url = "";
        synopsis = "sound generator";
        description = "Simple tone generator. You can decide the tone frequency and duration";
        buildType = "Simple";
      };
      components = {
        exes = {
          sound = {
            depends  = [
              hsPkgs.base
              hsPkgs.WAVE
              hsPkgs.split
            ];
          };
        };
      };
    }