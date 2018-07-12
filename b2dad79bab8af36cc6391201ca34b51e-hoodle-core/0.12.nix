{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hoodle-core";
          version = "0.12";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "http://ianwookim.org/hoodle";
        url = "";
        synopsis = "Core library for hoodle";
        description = "Hoodle is a pen notetaking program written in haskell.\nhoodle-core is the core library written in haskell and\nusing gtk2hs";
        buildType = "Custom";
      };
      components = {
        "hoodle-core" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.strict
            hsPkgs.gtk
            hsPkgs.cairo
            hsPkgs.pango
            hsPkgs.gd
            hsPkgs.attoparsec
            hsPkgs.coroutine-object
            hsPkgs.transformers
            hsPkgs.transformers-free
            hsPkgs.hoodle-types
            hsPkgs.hoodle-parser
            hsPkgs.xournal-parser
            hsPkgs.hoodle-render
            hsPkgs.hoodle-builder
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.either
            hsPkgs.errors
            hsPkgs.lens
            hsPkgs.process
            hsPkgs.configurator
            hsPkgs.time
            hsPkgs.Diff
            hsPkgs.dyre
            hsPkgs.cereal
            hsPkgs.base64-bytestring
            hsPkgs.old-locale
            hsPkgs.uuid
            hsPkgs.monad-loops
            hsPkgs.network
            hsPkgs.poppler
            hsPkgs.fsnotify
            hsPkgs.system-filepath
            hsPkgs.pureMD5
          ];
          libs = [
            pkgs.X11
            pkgs.Xi
            pkgs.dl
            pkgs.pthread
          ];
        };
      };
    }