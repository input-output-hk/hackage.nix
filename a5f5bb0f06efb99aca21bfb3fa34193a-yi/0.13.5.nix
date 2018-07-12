{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      emacs = true;
      pango = true;
      vim = true;
      vty = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi";
          version = "0.13.5";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Yi developers <yi-devel@googlegroups.com>";
        author = "";
        homepage = "https://github.com/yi-editor/yi#readme";
        url = "";
        synopsis = "Yi editor";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "yi" = {
            depends  = ((([
              hsPkgs.base
              hsPkgs.microlens-platform
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.yi-core
              hsPkgs.yi-misc-modes
              hsPkgs.yi-mode-haskell
              hsPkgs.yi-mode-javascript
              hsPkgs.yi-rope
            ] ++ pkgs.lib.optional _flags.vty hsPkgs.yi-frontend-vty) ++ pkgs.lib.optional _flags.pango hsPkgs.yi-frontend-pango) ++ pkgs.lib.optional _flags.vim hsPkgs.yi-keymap-vim) ++ pkgs.lib.optional _flags.emacs hsPkgs.yi-keymap-emacs;
          };
        };
      };
    }