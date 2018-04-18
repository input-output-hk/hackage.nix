{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "MissingK";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.co.uk";
        author = "Ivan Perez";
        homepage = "http://www.keera.co.uk/blog/";
        url = "";
        synopsis = "Useful types and definitions missing from other libraries";
        description = "Useful types and definitions missing from other libraries.";
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