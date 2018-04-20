{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "snaplet-fay";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "adam@edea.se";
        author = "Adam Bergmark";
        homepage = "https://github.com/faylang/snaplet-fay";
        url = "";
        synopsis = "Fay integration for Snap with automatic (re)compilation during development";
        description = "For more information, please see https://github.com/faylang/snaplet-fay";
        buildType = "Simple";
      };
      components = {
        snaplet-fay = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.configurator
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.fay
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.transformers
          ];
        };
        exes = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.configurator
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.fay
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.snap
              hsPkgs.snap-core
              hsPkgs.transformers
            ];
          };
        };
      };
    }