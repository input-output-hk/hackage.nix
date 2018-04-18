{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-keymap-cua";
          version = "0.13.7";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Yi developers <yi-devel@googlegroups.com>";
        author = "";
        homepage = "https://github.com/yi-editor/yi#readme";
        url = "";
        synopsis = "Cua keymap for Yi editor";
        description = "";
        buildType = "Simple";
      };
      components = {
        yi-keymap-cua = {
          depends  = [
            hsPkgs.base
            hsPkgs.microlens-platform
            hsPkgs.text
            hsPkgs.yi-core
            hsPkgs.yi-keymap-emacs
            hsPkgs.yi-rope
          ];
        };
      };
    }