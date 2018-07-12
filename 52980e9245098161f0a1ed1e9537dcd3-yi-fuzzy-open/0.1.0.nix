{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yi-fuzzy-open";
          version = "0.1.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "yi-devel@googlegroups.com";
        author = "AUTHORS";
        homepage = "https://github.com/yi-editor/yi-fuzzy-open";
        url = "";
        synopsis = "Fuzzy open plugin for Yi.";
        description = "This plugin tries to do what ctrl-p does for vim and helm does for emacs.";
        buildType = "Simple";
      };
      components = {
        "yi-fuzzy-open" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.transformers-base
            hsPkgs.vector
            hsPkgs.yi
            hsPkgs.yi-language
            hsPkgs.yi-rope
          ];
        };
      };
    }