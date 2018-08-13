{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "type-level-tf";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Corey O'Connor\nCopyright (c) 2008 Alfonso Acosta, Oleg Kiselyov, Wolfgang Jeltsch\nand KTH's SAM group\n2008 Benedikt Huber (Rewrite using type families)";
      maintainer = "coreyoconnor@gmail.com";
      author = "Corey O'Connor, Alfonso Acosta";
      homepage = "https://github.com/coreyoconnor/type-level-tf";
      url = "";
      synopsis = "Type-level programming library (type families)";
      description = "This library permits performing computations on the type-level. Type-level\nfunctions are implemented using functional dependencies of multi\nparameter type classes.\nTo date, Booleans and Numerals (Naturals and Positives) are\nsupported. With regard to Numerals, there is support for common\narithmetic operations (addition, substraction, multiplication,\ndivision, exponientation, logarithm, maximum, comparison, GCD)\nover natural numbers (using a decimal representation to make\ncompile-time errors friendlier).\nAlthough making use of type-level computations might seem devious and\nobfuscated at first sight, it is indeed useful in practice to implement\nlightweight dependent types such us number-parameterized types (e.g. an array\ntype parameterized by the array's size or a modular group type Zn\nparameterized by the modulus).";
      buildType = "Simple";
    };
    components = {
      "type-level-tf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.syb)
        ];
      };
    };
  }