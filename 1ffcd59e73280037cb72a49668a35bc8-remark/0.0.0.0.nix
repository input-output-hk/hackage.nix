{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "remark";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Oleks";
        maintainer = "oleks@oleks.info";
        author = "Oleks";
        homepage = "https://github.com/oleks/remark#readme";
        url = "";
        synopsis = "A DSL for marking student work";
        description = "Please see README.org";
        buildType = "Simple";
      };
      components = {
        "remark" = {
          depends  = [
            hsPkgs.base
            hsPkgs.GenericPretty
          ];
        };
        exes = {
          "remark" = {
            depends  = [
              hsPkgs.base
              hsPkgs.remark
              hsPkgs.GenericPretty
            ];
          };
        };
        tests = {
          "remark-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.remark
              hsPkgs.GenericPretty
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-golden
            ];
          };
        };
      };
    }