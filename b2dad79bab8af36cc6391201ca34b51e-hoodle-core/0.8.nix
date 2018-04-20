{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      poppler = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hoodle-core";
          version = "0.8";
        };
        license = "BSD-3-Clause";
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
        hoodle-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.strict
            hsPkgs.gtk
            hsPkgs.cairo
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
            hsPkgs.either
            hsPkgs.errors
            hsPkgs.lens
            hsPkgs.configurator
            hsPkgs.time
            hsPkgs.TypeCompose
            hsPkgs.Diff
            hsPkgs.dyre
            hsPkgs.cereal
            hsPkgs.base64-bytestring
            hsPkgs.old-locale
          ] ++ pkgs.lib.optional _flags.poppler hsPkgs.poppler;
        };
      };
    }