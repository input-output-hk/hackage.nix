{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "potoki-core";
          version = "1.4.1";
        };
        license = "MIT";
        copyright = "(c) 2017, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/potoki-core";
        url = "";
        synopsis = "Low-level components of \"potoki\"";
        description = "Provides everything required for building custom instances of\nthe \\\"potoki\\\" abstractions.\nConsider this library to be the Internals modules of \\\"potoki\\\".";
        buildType = "Simple";
      };
      components = {
        potoki-core = {
          depends  = [
            hsPkgs.stm
            hsPkgs.profunctors
            hsPkgs.base
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.potoki-core
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck
              hsPkgs.rerebase
            ];
          };
        };
      };
    }