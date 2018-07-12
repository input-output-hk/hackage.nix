{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unsequential";
          version = "0.5.2";
        };
        license = "MIT";
        copyright = "(c) 2016, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/unsequential";
        url = "";
        synopsis = "An extension removing the sequentiality from monads";
        description = "";
        buildType = "Simple";
      };
      components = {
        "unsequential" = {
          depends  = [
            hsPkgs.dlist
            hsPkgs.transformers
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          "attoparsec-integration-test" = {
            depends  = [
              hsPkgs.unsequential
              hsPkgs.interspersed
              hsPkgs.attoparsec
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-hunit
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck
              hsPkgs.rebase
            ];
          };
        };
      };
    }