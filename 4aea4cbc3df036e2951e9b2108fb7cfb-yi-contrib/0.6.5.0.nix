{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yi-contrib";
          version = "0.6.5.0";
        };
        license = "LicenseRef-GPL";
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
            hsPkgs.data-accessor
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.split
            hsPkgs.yi
          ];
        };
      };
    }