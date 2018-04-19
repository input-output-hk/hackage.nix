{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yi-contrib";
          version = "0.10.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "yi-devel@googlegroups.com";
        author = "AUTHORS";
        homepage = "http://haskell.org/haskellwiki/Yi";
        url = "";
        synopsis = "Add-ons to Yi, the Haskell-Scriptable Editor";
        description = "3rd-party add-ons to Yi. The goal of this package is to simplify the core Yi\npackage.";
        buildType = "Simple";
      };
      components = {
        yi-contrib = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.split
            hsPkgs.mtl
            hsPkgs.yi
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.transformers-base
            hsPkgs.yi-language
            hsPkgs.yi-rope
            hsPkgs.oo-prototypes
          ];
        };
      };
    }