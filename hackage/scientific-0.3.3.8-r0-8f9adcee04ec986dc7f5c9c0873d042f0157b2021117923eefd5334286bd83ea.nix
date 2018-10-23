{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bytestring-builder = true;
      integer-simple = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "scientific";
        version = "0.3.3.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "https://github.com/basvandijk/scientific";
      url = "";
      synopsis = "Numbers represented using scientific notation";
      description = "@Data.Scientific@ provides a space efficient and arbitrary precision\nscientific number type.\n\n'Scientific' numbers are represented using\n<http://en.wikipedia.org/wiki/Scientific_notation scientific notation>. It\nuses a coefficient @c :: 'Integer'@ and a base-10 exponent @e :: 'Int'@ (do\nnote that since we're using an 'Int' to represent the exponent these numbers\naren't truly arbitrary precision). A scientific number corresponds to the\n'Fractional' number: @'fromInteger' c * 10 '^^' e@.\n\nThe main application of 'Scientific' is to be used as the target of parsing\narbitrary precision numbers coming from an untrusted source. The advantages\nover using 'Rational' for this are that:\n\n* A 'Scientific' is more efficient to construct. Rational numbers need to be\nconstructed using '%' which has to compute the 'gcd' of the 'numerator' and\n'denominator'.\n\n* 'Scientific' is safe against numbers with huge exponents. For example:\n@1e1000000000 :: 'Rational'@ will fill up all space and crash your\nprogram. Scientific works as expected:\n\n> > read \"1e1000000000\" :: Scientific\n> 1.0e1000000000\n\n* Also, the space usage of converting scientific numbers with huge exponents to\n@'Integral's@ (like: 'Int') or @'RealFloat's@ (like: 'Double' or 'Float')\nwill always be bounded by the target type.";
      buildType = "Simple";
    };
    components = {
      "scientific" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.deepseq)
          (hsPkgs.text)
          (hsPkgs.hashable)
          (hsPkgs.array)
        ] ++ (if flags.integer-simple
          then [ (hsPkgs.integer-simple) ]
          else [
            (hsPkgs.integer-gmp)
          ])) ++ pkgs.lib.optional (flags.bytestring-builder) (hsPkgs.bytestring);
      };
      tests = {
        "test-scientific" = {
          depends  = [
            (hsPkgs.scientific)
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-ant-xml)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.smallcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.bytestring)
          ];
        };
      };
      benchmarks = {
        "bench-scientific" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.ghc-prim)
            (hsPkgs.deepseq)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.hashable)
            (hsPkgs.array)
          ] ++ (if flags.integer-simple
            then [ (hsPkgs.integer-simple) ]
            else [ (hsPkgs.integer-gmp) ]);
        };
      };
    };
  }