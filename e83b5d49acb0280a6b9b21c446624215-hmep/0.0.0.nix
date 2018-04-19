{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "hmep";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Bogdan Penkovsky";
        maintainer = "dev at penkovsky dot com";
        author = "Bogdan Penkovsky";
        homepage = "https://github.com/masterdezign/hmep#readme";
        url = "";
        synopsis = "HMEP Multi Expression Programming –\na genetic programming variant";
        description = "A multi expression programming implementation with\nfocus on speed.\n\nhttps://en.wikipedia.org/wiki/Multi_expression_programming";
        buildType = "Simple";
      };
      components = {
        hmep = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.monad-mersenne-random
            hsPkgs.mersenne-random-pure64
            hsPkgs.random
            hsPkgs.vector
          ];
        };
        exes = {
          hmep-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hmatrix
              hsPkgs.mersenne-random-pure64
              hsPkgs.monad-mersenne-random
              hsPkgs.vector
              hsPkgs.hmep
            ];
          };
        };
        tests = {
          hmep-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.vector
              hsPkgs.hmep
            ];
          };
        };
      };
    }