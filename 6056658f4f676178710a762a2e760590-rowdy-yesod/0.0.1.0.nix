{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rowdy-yesod";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Matt Parsons";
        maintainer = "parsonsmatt@gmail.com";
        author = "Matt Parsons";
        homepage = "https://github.com/parsonsmatt/rowdy#readme";
        url = "";
        synopsis = "An EDSL for web application routes.";
        description = "Please see the README on Github at <https://github.com/parsonsmatt/rowdy#readme>";
        buildType = "Simple";
      };
      components = {
        "rowdy-yesod" = {
          depends  = [
            hsPkgs.base
            hsPkgs.rowdy
            hsPkgs.yesod-core
          ];
        };
        tests = {
          "specs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.rowdy
              hsPkgs.rowdy-yesod
              hsPkgs.yesod-core
            ];
          };
        };
      };
    }