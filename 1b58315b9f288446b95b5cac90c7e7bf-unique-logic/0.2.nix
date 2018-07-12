{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "unique-logic";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann";
        homepage = "http://code.haskell.org/~thielema/unique-logic/";
        url = "";
        synopsis = "Solve simple simultaneous equations";
        description = "Solve a number of equations simultaneously.\nThis is not Computer Algebra,\nbetter think of a kind of type inference algorithm\nor logic programming with only one allowed solution.\n\nOnly one solution is computed.\nSimultaneous equations with multiple solutions are not allowed.\nHowever, variables may remain undefined.\nWe do not even check for consistency,\nsince with floating point numbers even simple rules may not be consistent.\n\nThe modules ordered with respect to abstraction level:\n\n* \"UniqueLogic.ST.System\":\nConstruct and solve sets of functional dependencies.\nExample: @assignment3 (+) a b c@ meaning dependency @a+b -> c@.\n\n* \"UniqueLogic.ST.Rule\":\nCombine functional dependencies to rules\nthat can apply in multiple directions.\nExample: @add a b c@ means relation @a+b = c@\nwhich resolves to dependencies @a+b -> c, c-a -> b, c-b -> a@.\n\n* \"UniqueLogic.ST.Expression\":\nAllow to write rules using arithmetic operators.\nIt creates temporary variables automatically.\nExample: @(a+b)*c =:= d@ resolves to @a+b = x, x*c = d@.";
        buildType = "Simple";
      };
      components = {
        "unique-logic" = {
          depends  = [
            hsPkgs.transformers
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
        tests = {
          "test-unique-logic" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.unique-logic
              hsPkgs.non-empty
              hsPkgs.transformers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
      };
    }