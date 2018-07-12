{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clr-bindings";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Tim Matthews";
        maintainer = "tim.matthews7@gmail.com";
        author = "Tim Matthews";
        homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-bindings";
        url = "";
        synopsis = "Glue between clr-host and clr-typed";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "clr-bindings" = {
          depends  = [
            hsPkgs.base
            hsPkgs.clr-typed
            hsPkgs.clr-host
            hsPkgs.clr-marshal
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.pipes
          ];
        };
        tests = {
          "clr-bindings-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.clr-bindings
            ];
          };
        };
      };
    }