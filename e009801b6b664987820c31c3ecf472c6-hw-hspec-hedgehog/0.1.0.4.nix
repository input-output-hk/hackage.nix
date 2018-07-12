{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hw-hspec-hedgehog";
          version = "0.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2017 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "https://github.com/haskell-works/hw-hspec-hedgehog#readme";
        url = "";
        synopsis = "Interoperability between hspec and hedgehog";
        description = "Some functions to use hedgehog from hspec";
        buildType = "Simple";
      };
      components = {
        "hw-hspec-hedgehog" = {
          depends  = [
            hsPkgs.HUnit
            hsPkgs.base
            hsPkgs.call-stack
            hsPkgs.hedgehog
            hsPkgs.hspec
          ];
        };
        tests = {
          "hw-hspec-hedgehog-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hedgehog
              hsPkgs.hspec
              hsPkgs.hw-hspec-hedgehog
            ];
          };
        };
      };
    }