{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "logging-facade";
          version = "0.0.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "";
        url = "";
        synopsis = "Simple logging abstraction that allows multiple backends";
        description = "Simple logging abstraction that allows multiple backends";
        buildType = "Simple";
      };
      components = {
        "logging-facade" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging-facade
              hsPkgs.hspec
            ];
          };
        };
      };
    }