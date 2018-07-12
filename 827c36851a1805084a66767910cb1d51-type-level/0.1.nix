{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "type-level";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008 Alfonso Acosta, Oleg Kiselyov, Wolfgang Jeltsch\nand KTH's SAM group";
        maintainer = "alfonso.acosta@gmail.com";
        author = "Alfonso Acosta";
        homepage = "http://code.haskell.org/type-level";
        url = "http://code.haskell.org/type-level";
        synopsis = "Type-level programming library";
        description = "This library permits performing computations on the type-level. Type-level\nfunctions are implemented using functional dependencies of multi\nparameter type classes.\nTo date, Booleans and Numerals (Naturals and Positives) are\nsupported. With regard to Numerals, there is support for common\narithmetic operations (addition, substraction, multiplication,\ndivision, exponientation, logarithm, maximum, comparison, GCD)\nover natural numbers (using a decimal representation to make\ncompile-time errors friendlier).\nAlthough making use of type-level computations might seem devious and\nobfuscated at first sight, it is indeed useful in practice to implement\nlightweight dependent types such us number-parameterized types (e.g. an array\ntype parameterized by the array's size or a modular group type Zn\nparameterized by the modulus).";
        buildType = "Simple";
      };
      components = {
        "type-level" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.template-haskell
          ];
        };
      };
    }