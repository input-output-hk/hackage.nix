{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dde";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Bogdan Penkovsky";
        maintainer = "dev () penkovsky dot com";
        author = "Bogdan Penkovsky";
        homepage = "https://github.com/masterdezign/dde#readme";
        url = "";
        synopsis = "Delay differential equations";
        description = "Please see the README on Github at <https://github.com/masterdezign/dde#readme>";
        buildType = "Simple";
      };
      components = {
        "dde" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
        exes = {
          "mackey-glass" = {
            depends  = [
              hsPkgs.base
              hsPkgs.dde
              hsPkgs.vector
            ];
          };
        };
        tests = {
          "dde-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.dde
              hsPkgs.vector
            ];
          };
        };
      };
    }