{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haste-perch";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto G. Corona";
        homepage = "https://github.com/agocorona/haste-perch";
        url = "";
        synopsis = "Create dynamic HTML in the browser using declarative notation";
        description = "";
        buildType = "Simple";
      };
      components = {
        haste-perch = {
          depends  = [
            hsPkgs.base
            hsPkgs.haste-lib
            hsPkgs.transformers
          ];
        };
      };
    }