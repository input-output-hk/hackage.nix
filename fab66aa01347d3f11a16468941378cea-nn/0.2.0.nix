{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nn";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "2018 Sascha Grunert";
        maintainer = "mail@saschagrunert.de";
        author = "Sascha Grunert";
        homepage = "https://github.com/saschagrunert/nn#readme";
        url = "";
        synopsis = "A tiny neural network";
        description = "Please see the README on Github at <https://github.com/saschagrunert/nn#readme>";
        buildType = "Simple";
      };
      components = {
        nn = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.split
          ];
        };
        tests = {
          nn-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.nn
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }