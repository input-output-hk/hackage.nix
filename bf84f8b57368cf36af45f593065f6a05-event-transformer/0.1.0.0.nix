{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "event-transformer";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Schell Scivally";
        maintainer = "schell@zyghost.com";
        author = "Schell Scivally";
        homepage = "https://github.com/schell/event-transformer#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "event-transformer" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
        exes = {
          "event-transformer-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.event-transformer
            ];
          };
        };
        tests = {
          "event-transformer-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.event-transformer
            ];
          };
        };
      };
    }