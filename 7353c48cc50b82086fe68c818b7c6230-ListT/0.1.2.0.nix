{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ListT";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "m.farkasdyck@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "List transformer";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ListT" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.util
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.ListT
              hsPkgs.base
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-smallcheck
              hsPkgs.transformers
              hsPkgs.util
            ];
          };
        };
      };
    }