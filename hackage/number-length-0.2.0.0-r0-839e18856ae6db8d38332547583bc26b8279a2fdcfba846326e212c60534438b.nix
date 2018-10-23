{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "number-length";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2016, 2018 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/number-length";
      url = "";
      synopsis = "Number of digits in a number in decimal and hexadecimal representation.";
      description = "There are situations when it is necessary to know the length of a number in\ndecimal or hexadecimal form. In example when allocating buffer while\nserializing a number in to binary or human readable format.\n\n@\nλ> numberLength (123 :: Int)\n3\n@\n\n@\nλ> numberLengthHex (123 :: Int)  -- 123 = 7b in hex\n2\n@";
      buildType = "Simple";
    };
    components = {
      "number-length" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs.tagged);
        };
      };
      benchmarks = {
        "benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.number-length)
          ];
        };
      };
    };
  }