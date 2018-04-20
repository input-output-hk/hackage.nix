{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ansi-terminal";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Max Bolingbroke";
        homepage = "https://github.com/feuerbach/ansi-terminal";
        url = "";
        synopsis = "Simple ANSI terminal support, with Windows compatibility";
        description = "ANSI terminal support for Haskell: allows cursor movement, screen clearing, color output, showing or hiding the cursor, and\nchanging the title. Works on UNIX and Windows.";
        buildType = "Simple";
      };
      components = {
        ansi-terminal = {
          depends  = [
            hsPkgs.base
            hsPkgs.colour
          ] ++ pkgs.lib.optionals system.isWindows [
            hsPkgs.base-compat
            hsPkgs.Win32
            hsPkgs.process
          ];
        };
        exes = {
          ansi-terminal-example = {
            depends  = [
              hsPkgs.base
            ] ++ pkgs.lib.optionals system.isWindows [
              hsPkgs.base-compat
              hsPkgs.Win32
            ];
          };
        };
      };
    }