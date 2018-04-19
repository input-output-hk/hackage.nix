{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-default-instances-dlist";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<l.mai@web.de>";
        author = "Lukas Mai";
        homepage = "";
        url = "";
        synopsis = "Default instances for types in dlist";
        description = "";
        buildType = "Simple";
      };
      components = {
        data-default-instances-dlist = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default-class
            hsPkgs.dlist
          ];
        };
      };
    }