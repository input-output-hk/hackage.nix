{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "mkbndl";
          version = "0.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Thomas Davie (tom.davie@gmail.com)";
        author = "Thomas Davie";
        homepage = "";
        url = "";
        synopsis = "Makes an OS X .app bundle from a binary.";
        description = "Allows you to easily construct a .app bundle from a binary\ncomplete with icon files and finder version info.";
        buildType = "Simple";
      };
      components = {
        exes = {
          mkbndl = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
      };
    }