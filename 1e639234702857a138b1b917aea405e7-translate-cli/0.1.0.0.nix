{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "translate-cli";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017";
        maintainer = "as@99n.de";
        author = "andys8";
        homepage = "https://github.com/andys8/translate-cli#readme";
        url = "";
        synopsis = "Translation cli tool";
        description = "Translation cli tool";
        buildType = "Simple";
      };
      components = {
        "translate-cli" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wreq
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.aeson-lens
          ];
        };
        exes = {
          "translate" = {
            depends  = [
              hsPkgs.base
              hsPkgs.translate-cli
              hsPkgs.turtle
              hsPkgs.text
            ];
          };
        };
        tests = {
          "translate-cli-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.translate-cli
              hsPkgs.HUnit
            ];
          };
        };
      };
    }