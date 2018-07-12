{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nc-indicators";
          version = "0.2";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Mihaly Barasz <klao@nilcons.com>, Gergely Risko <errge@nilcons.com>";
        author = "Mihaly Barasz, Gergely Risko";
        homepage = "https://github.com/nilcons/nc-indicators";
        url = "";
        synopsis = "CPU load and memory usage indicators for i3bar";
        description = "@nc-indicators@ displays a CPU load and memory usage mini-graphs in\nyour @i3bar@, much like Gnome's @indicator-multiload@ applet.\n\nTo use @nc-indicators@ simply @exec@ it on startup:\n\n@\nexec --no-startup-id nc-indicators\n@\n\nYou can turn off either indicator and change the update interval, eg.:\n\n@\nexec --no-startup-id nc-indicators --show_mem=0 --update_interval=300\n@\n\n@nc-indicators@ uses the standard system tray icon protocol, so it\ncan be used with any system tray-like application, not just\n@i3bar@. But it was originally created to be used with @i3bar@.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "nc-indicators" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.gtk
              hsPkgs.hflags
              hsPkgs.lens
              hsPkgs.pipes
              hsPkgs.stm
              hsPkgs.unix
            ];
          };
        };
      };
    }