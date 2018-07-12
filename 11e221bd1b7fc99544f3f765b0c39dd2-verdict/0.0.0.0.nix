{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "verdict";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Julian K. Arni";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "";
        url = "";
        synopsis = "Validation framework";
        description = "DO NOT USE! Unstable, not thoroughly tested.";
        buildType = "Simple";
      };
      components = {
        "verdict" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.text
          ];
        };
        exes = {
          "tutorial" = {
            depends  = [
              hsPkgs.base
              hsPkgs.verdict
              hsPkgs.text
              hsPkgs.markdown-unlit
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.verdict
              hsPkgs.hspec
            ];
          };
        };
      };
    }