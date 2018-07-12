{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hxournal";
          version = "0.6.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "http://ianwookim.org/hxournal";
        url = "";
        synopsis = "A pen notetaking program written in haskell";
        description = "notetaking program written in haskell and gtk2hs";
        buildType = "Custom";
      };
      components = {
        "hxournal" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.strict
            hsPkgs.gtk
            hsPkgs.cairo
            hsPkgs.monad-coroutine
            hsPkgs.transformers
            hsPkgs.xournal-types
            hsPkgs.xournal-parser
            hsPkgs.xournal-render
            hsPkgs.xournal-builder
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.double-conversion
            hsPkgs.fclabels
            hsPkgs.cmdargs
            hsPkgs.configurator
            hsPkgs.poppler
          ];
        };
        exes = {
          "hxournal" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.hxournal
            ];
          };
        };
      };
    }