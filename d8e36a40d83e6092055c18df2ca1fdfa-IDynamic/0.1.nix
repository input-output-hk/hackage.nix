{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "IDynamic";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto Gómez Corona";
        homepage = "";
        url = "";
        synopsis = "Indexable, serializable  form of Data.Dynamic";
        description = "A variant of Data.Dynamic that can be indexed, stored, transmitted trough communications etc.";
        buildType = "Simple";
      };
      components = {
        "IDynamic" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.containers
          ];
        };
      };
    }