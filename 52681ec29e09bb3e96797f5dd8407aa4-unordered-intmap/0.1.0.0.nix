{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unordered-intmap";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Dmitry Ivanov";
        maintainer = "ethercrow@gmail.com";
        author = "Dmitry Ivanov";
        homepage = "https://github.com/ethercrow/unordered-intmap";
        url = "";
        synopsis = "A specialization of `HashMap Int v`";
        description = "";
        buildType = "Simple";
      };
      components = {
        unordered-intmap = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.primitive
          ];
        };
        tests = {
          props = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.primitive
              hsPkgs.unordered-intmap
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }