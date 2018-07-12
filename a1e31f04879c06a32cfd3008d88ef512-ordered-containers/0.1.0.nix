{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ordered-containers";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@dmwit.com";
        author = "Daniel Wagner";
        homepage = "";
        url = "";
        synopsis = "Set- and Map-like types that remember the order elements were inserted";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ordered-containers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }