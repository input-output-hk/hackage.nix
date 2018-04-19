{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "parameterized";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/parameterized#readme";
        url = "";
        synopsis = "Parameterized/indexed monoids and monads using only a single parameter type variable.";
        description = "Parameterized/indexed monoids and monads using only a single parameter type variable.";
        buildType = "Simple";
      };
      components = {
        parameterized = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-diverse
            hsPkgs.transformers
          ];
        };
        tests = {
          parameterized-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.parameterized
              hsPkgs.hspec
              hsPkgs.data-diverse
              hsPkgs.transformers
            ];
          };
        };
      };
    }