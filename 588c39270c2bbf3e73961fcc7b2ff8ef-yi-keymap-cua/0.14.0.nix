{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-keymap-cua";
          version = "0.14.0";
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