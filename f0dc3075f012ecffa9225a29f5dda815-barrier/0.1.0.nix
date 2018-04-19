{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = false;
      generator = false;
      test-results = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "barrier";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/barrier";
        url = "";
        synopsis = "Shield.io style badge generator";
        description = "see example: <https://github.com/philopon/barrier/blob/master/examples/example.hs>";
        buildType = "Simple";
      };
      components = {
        barrier = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.unordered-containers
            hsPkgs.blaze-svg
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
        exes = {
          barrier-data-generator = {
            depends  = optionals _flags.generator [
              hsPkgs.base
              hsPkgs.freetype2
            ];
          };
          barrier-example = {
            depends  = optionals _flags.example [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lens-family-core
              hsPkgs.barrier
            ];
          };
          barrier-test-result-generator = {
            depends  = optionals _flags.test-results [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lens-family-core
              hsPkgs.barrier
            ];
          };
        };
        tests = {
          tasty = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lens-family-core
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.barrier
            ];
          };
        };
      };
    }