{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "midisurface";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "paolo.veronelli@gmail.com";
        author = "paolo.veronelli";
        homepage = "";
        url = "";
        synopsis = "A control midi surface";
        description = "A simple GTK2 UI to send midi control values.";
        buildType = "Simple";
      };
      components = {
        exes = {
          midisurface = {
            depends  = [
              hsPkgs.base
              hsPkgs.alsa-seq
              hsPkgs.alsa-core
              hsPkgs.stm
              hsPkgs.containers
              hsPkgs.gtk
              hsPkgs.mtl
            ];
          };
        };
      };
    }