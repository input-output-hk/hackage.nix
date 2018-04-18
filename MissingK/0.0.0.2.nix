{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "MissingK";
          version = "0.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.es";
        author = "Ivan Perez";
        homepage = "http://www.keera.es/blog/community/";
        url = "";
        synopsis = "Useful types and definitions missing from other libraries";
        description = "";
        buildType = "Simple";
      };
      components = {
        MissingK = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.glib
          ];
        };
      };
    }