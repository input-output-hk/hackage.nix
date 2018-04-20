{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "binary-parser";
          version = "0.5.5";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/binary-parser";
        url = "";
        synopsis = "A highly-efficient but limited parser API specialised for bytestrings";
        description = "";
        buildType = "Simple";
      };
      components = {
        binary-parser = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.binary-parser
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.quickcheck-instances
              hsPkgs.rerebase
            ];
          };
        };
      };
    }