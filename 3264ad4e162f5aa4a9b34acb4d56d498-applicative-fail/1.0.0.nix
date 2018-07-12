{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "applicative-fail";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "s9gf4ult@gmail.com";
        author = "Aleksey Uimanov";
        homepage = "https://bitbucket.org/s9gf4ult/applicative-fail";
        url = "";
        synopsis = "Applicative functor and monad which collects all your fails";
        description = "Applicative functor to perform parse-like actions and\ncollect wanrings/failures.";
        buildType = "Simple";
      };
      components = {
        "applicative-fail" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.dlist
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.transformers-base
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.applicative-fail
              hsPkgs.checkers
              hsPkgs.mtl
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }