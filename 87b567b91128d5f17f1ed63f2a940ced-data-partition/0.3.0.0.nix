{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "data-partition";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "lrpalmer@gmail.com";
        author = "Luke Palmer";
        homepage = "https://github.com/luqui/data-partition";
        url = "";
        synopsis = "A pure disjoint set (union find) data structure";
        description = "";
        buildType = "Simple";
      };
      components = {
        "data-partition" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }