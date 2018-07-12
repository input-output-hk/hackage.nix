{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quickcheck-combinators";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Simple type-level combinators for augmenting\nQuickCheck instances.";
        description = "Simply wrap the type you want to generate (assuming it satisfies\nall the necessary constraints) to refine the terms generated:\n\n@\n&#123;-&#35; LANGUAGE DataKinds &#35;-&#125;\n&#13;\nimport Data.Set (Set)\nimport Test.QuickCheck\nimport Test.QuickCheck.Instances\nimport GHC.TypeLits\n&#13;\ninstance Arbitrary LinearEquation where\n&#32;&#32;arbitrary = do\n&#32;&#32;&#32;&#32;vars <- arbitrary :: Gen (AtLeast 3 Set String)\n&#32;&#32;&#32;&#32;&#45;&#45; ...\n@\n";
        buildType = "Simple";
      };
      components = {
        "quickcheck-combinators" = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.unfoldable-restricted
          ];
        };
      };
    }