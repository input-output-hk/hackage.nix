{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "carettah";
          version = "0.4.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Kiwamu Okabe <kiwamu@debian.or.jp>";
        author = "Kiwamu Okabe <kiwamu@debian.or.jp>";
        homepage = "https://github.com/master-q/carettah";
        url = "";
        synopsis = "A presentation tool written with Haskell.";
        description = "A presentation tool written with Haskell.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "_carettah_main_" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.filepath
              hsPkgs.time
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.pandoc
              hsPkgs.gtk
              hsPkgs.cairo
              hsPkgs.pango
              hsPkgs.hcwiid
              hsPkgs.highlighting-kate
            ];
          };
          "carettah" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.process
            ];
          };
        };
      };
    }