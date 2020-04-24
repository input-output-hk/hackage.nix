{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bytestring-builder = false; integer-simple = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "scientific"; version = "0.3.4.14"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "https://github.com/basvandijk/scientific";
      url = "";
      synopsis = "Numbers represented using scientific notation";
      description = "@Data.Scientific@ provides the number type 'Scientific'. Scientific numbers are\narbitrary precision and space efficient. They are represented using\n<http://en.wikipedia.org/wiki/Scientific_notation scientific notation>.\nThe implementation uses a coefficient @c :: 'Integer'@ and a base-10 exponent\n@e :: 'Int'@. A scientific number corresponds to the\n'Fractional' number: @'fromInteger' c * 10 '^^' e@.\n\nNote that since we're using an 'Int' to represent the exponent these numbers\naren't truly arbitrary precision. I intend to change the type of the exponent\nto 'Integer' in a future release.\n\nThe main application of 'Scientific' is to be used as the target of parsing\narbitrary precision numbers coming from an untrusted source. The advantages\nover using 'Rational' for this are that:\n\n* A 'Scientific' is more efficient to construct. Rational numbers need to be\nconstructed using '%' which has to compute the 'gcd' of the 'numerator' and\n'denominator'.\n\n* 'Scientific' is safe against numbers with huge exponents. For example:\n@1e1000000000 :: 'Rational'@ will fill up all space and crash your\nprogram. Scientific works as expected:\n\n> > read \"1e1000000000\" :: Scientific\n> 1.0e1000000000\n\n* Also, the space usage of converting scientific numbers with huge exponents to\n@'Integral's@ (like: 'Int') or @'RealFloat's@ (like: 'Double' or 'Float')\nwill always be bounded by the target type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."integer-logarithms" or ((hsPkgs.pkgs-errors).buildDepError "integer-logarithms"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ] ++ (if flags.bytestring-builder
          then [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-builder"))
            ]
          else [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ])) ++ (if flags.integer-simple
          then [
            (hsPkgs."integer-simple" or ((hsPkgs.pkgs-errors).buildDepError "integer-simple"))
            ]
          else [
            (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
            ]);
        buildable = true;
        };
      tests = {
        "test-scientific" = {
          depends = [
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-ant-xml" or ((hsPkgs.pkgs-errors).buildDepError "tasty-ant-xml"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ] ++ (if flags.bytestring-builder
            then [
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."bytestring-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-builder"))
              ]
            else [
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              ]);
          buildable = true;
          };
        };
      benchmarks = {
        "bench-scientific" = {
          depends = [
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }