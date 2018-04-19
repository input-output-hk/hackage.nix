{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "th-alpha";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Julian K. Arni";
        maintainer = "Julian K. Arni <jkarni@gmail.com>";
        author = "Julian K. Arni";
        homepage = "https://github.com/jkarni/th-alpha";
        url = "";
        synopsis = "Alpha equivalence for TH Exp";
        description = "Compare TH expressions (or clauses, patterns, etc.) for alpha equivalence.\nThat is, compare for equality modulo the renaming of bound variables.\n\n> areExpAEq [| \\x -> x |] [| \\y -> y |]\n> -- True\n\n> do\n>    let x = mkName \"x\"\n>    let y = mkName \"y\"\n>    runQ \$ (LamE [VarP x] (VarE x)) @= (LamE [VarP y] (VarE y))\n> -- True\n\nThis can be useful when for instance testing libraries that use Template\nHaskell - usually correctness is only defined up to alpha equivalence.";
        buildType = "Simple";
      };
      components = {
        th-alpha = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.th-desugar
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.mmorph
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.th-alpha
              hsPkgs.template-haskell
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.derive
            ];
          };
        };
      };
    }