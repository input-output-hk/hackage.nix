{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-default";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<l.mai@web.de>";
        author = "Lukas Mai";
        homepage = "";
        url = "";
        synopsis = "A class for types with a default value";
        description = "";
        buildType = "Simple";
      };
      components = {
        data-default = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.dlist
            hsPkgs.old-locale
          ];
        };
      };
    }