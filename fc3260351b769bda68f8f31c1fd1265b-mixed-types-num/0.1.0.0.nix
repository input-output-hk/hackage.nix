{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "mixed-types-num";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015-2017 Michal Konecny";
        maintainer = "Michal Konecny <mikkonecny@gmail.com>";
        author = "Michal Konecny";
        homepage = "https://github.com/michalkonecny/mixed-types-num";
        url = "";
        synopsis = "Alternative Prelude with numeric and logic expressions typed bottom-up";
        description = "= Main purpose\n\nThis package provides a version of Prelude where\nunary and binary operations such as @not@, @+@, @==@\nhave their result type derived from the parameter type(s),\nallowing, /e.g./:\n\n* dividing an integer by an integer, giving a rational:\n\n@let n = 1 :: Integer in n/(n+1) :: Rational@\n\n@1/2 :: Rational@\n\n(The type Rational would be derived automatically because\ninteger literals are always of type @Integer@, not @Num t => t@.)\n\n* adding an integer and a rational, giving a rational:\n\n@(length [x])+1/3 :: Rational@\n\n* taking natural, integer and fractional power using the same operator:\n\n@2^2 :: Integer@\n\n@2.0^(-2) :: Rational@\n\n@(double 2)^(1/2) :: Double@\n\nThe following examples require package <https://github.com/michalkonecny/aern2/aern2-real aern2-real>:\n\n@2^(1/2) :: CauchyReal@\n\n@pi :: CauchyReal@\n\n@sqrt 2 :: CauchyReal@\n\n* comparing an integer with an (exact) real number, giving a @Maybe Bool@:\n\n@... x :: CauchyReal ... if (isCertainlyTrue (x > 1)) then ...@\n\n= Type classes\n\nArithmetic operations are provided via multi-parameter type classes\nand the result type is given by associated\ntype families. For example:\n\n@(+) :: (CanAddAsymmetric t1 t2) => t1 -> t2 -> AddType t1 t2@\n\nThe type constraint @CanAdd t1 t2@ implies both\n@CanAddAsymmetric t1 t2@ and @CanAddAsymmetric t2 t1@.\n\nFor convenience there are other aggregate type constraints such as\n@CanAddThis t1 t2@, which implies that the result is of type @t1@,\nand @CanAddSameType t@, which is a shortcut for @CanAddThis t t@.\n\n== Testable specification\n\nThe arithmetic type classes are accompanied by generic hspec test suites,\nwhich are specialised to concrete instance types for their testing.\nThese test suites include the expected algebraic properties of operations,\nsuch as commutativity and associativity of addition.\n\n= Limitations\n\n* Not all numerical operations are supported yet.\nEg @tan@, @atan@ are missing at the moment.\n\n* Inferred types can be very large. Eg for @f a b c = sqrt (a + b * c + 1)@ the inferred type is:\n\n@\nf: (CanMulAsymmetric t1 t2, CanAddAsymmetric t4 (MulType t1 t2),\nCanAddAsymmetric (AddType t4 (MulType t1 t2)) Integer,\nCanSqrt (AddType (AddType t4 (MulType t1 t2)) Integer)) =>\nt4\n-> t1\n-> t2\n-> SqrtType (AddType (AddType t4 (MulType t1 t2)) Integer)\n@\n\n* Due to limitations of some versions of ghc, type inferrence sometimes fails.\nEg @add1 = (+ 1)@ fails (eg with ghc 8.0.2) unless we explicitly declare the type\n@add1 :: (CanAdd Integer t) => t -> AddType t Integer@\nor use an explicit parameter, eg @add1 x = x + 1@.\n\n= Further reading\n\nTo find out more, please read the documentation for the modules\nin the order specified in \"Numeric.MixedTypes\".\n\n= Origin\n\nThe idea of having numeric expressions in Haskell with types\nderived bottom-up was initially suggested and implemented by Pieter Collins.\nThis version is a fresh rewrite by Michal Konečný.";
        buildType = "Simple";
      };
      components = {
        "mixed-types-num" = {
          depends  = [
            hsPkgs.base
            hsPkgs.convertible
            hsPkgs.hspec
            hsPkgs.hspec-smallcheck
            hsPkgs.smallcheck
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mixed-types-num
              hsPkgs.hspec
              hsPkgs.hspec-smallcheck
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }