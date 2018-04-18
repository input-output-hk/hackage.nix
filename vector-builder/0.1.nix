{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vector-builder";
          version = "0.1";
        };
        license = "MIT";
        copyright = "(c) 2016, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/vector-builder";
        url = "";
        synopsis = "Vector builder";
        description = "An API for efficient construction of vectors with abstraction over their size.";
        buildType = "Simple";
      };
      components = {
        vector-builder = {
          depends  = [
            hsPkgs.primitive
            hsPkgs.vector
            hsPkgs.semigroups
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.quickcheck-instances
              hsPkgs.vector-builder
              hsPkgs.rebase
            ];
          };
        };
      };
    }