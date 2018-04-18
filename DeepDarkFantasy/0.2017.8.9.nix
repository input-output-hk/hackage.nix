{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      werror = false;
    } // flags;
    in {
      package = {
        specVersion = "1.12";
        identifier = {
          name = "DeepDarkFantasy";
          version = "0.2017.8.9";
        };
        license = "LicenseRef-Apache";
        copyright = "";
        maintainer = "lolisa@marisa.moe";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A DSL for creating neural network.";
        description = "Deep Dark Fantasy(DDF) is a domain specific language that allow one to automatically derive derivative of program in DDF. Hence, one can write neural network in DDF and use the derivative program for gradient descend.";
        buildType = "Simple";
      };
      components = {
        DeepDarkFantasy = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.constraints
            hsPkgs.containers
            hsPkgs.bimap
            hsPkgs.recursion-schemes
            hsPkgs.template-haskell
          ];
        };
        tests = {
          TestPoly = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.constraints
              hsPkgs.DeepDarkFantasy
            ];
          };
          TestXor = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.constraints
              hsPkgs.DeepDarkFantasy
            ];
          };
          TestPE = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.constraints
              hsPkgs.QuickCheck
              hsPkgs.DeepDarkFantasy
            ];
          };
        };
      };
    }