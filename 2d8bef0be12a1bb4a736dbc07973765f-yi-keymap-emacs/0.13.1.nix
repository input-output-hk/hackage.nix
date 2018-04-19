{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-keymap-emacs";
          version = "0.13.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Yi developers <yi-devel@googlegroups.com>";
        author = "";
        homepage = "https://github.com/yi-editor/yi#readme";
        url = "";
        synopsis = "Emacs keymap for Yi editor";
        description = "";
        buildType = "Simple";
      };
      components = {
        yi-keymap-emacs = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.Hclip
            hsPkgs.microlens-platform
            hsPkgs.mtl
            hsPkgs.oo-prototypes
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.transformers-base
            hsPkgs.yi-core
            hsPkgs.yi-misc-modes
            hsPkgs.yi-language
            hsPkgs.yi-rope
          ];
        };
      };
    }