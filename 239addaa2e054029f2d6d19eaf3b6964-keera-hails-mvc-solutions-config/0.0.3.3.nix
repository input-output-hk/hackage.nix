{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "keera-hails-mvc-solutions-config";
          version = "0.0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.es";
        author = "Ivan Perez";
        homepage = "http://www.keera.es/blog/community/";
        url = "";
        synopsis = "Haskell on Gtk rails - Easy handling of configuration files";
        description = "";
        buildType = "Simple";
      };
      components = {
        "keera-hails-mvc-solutions-config" = {
          depends  = [
            hsPkgs.base
            hsPkgs.MissingK
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
      };
    }