{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { integer-simple = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "numerals"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "2009–2014 Roel van Dijk, Bas van Dijk";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>, Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/roelvandijk/numerals";
      url = "";
      synopsis = "Convert numbers to number words";
      description = "Convert numbers to number words in a number of languages. Each language has\nits own module. The module name is based on the ISO 639-3 code for that\nlanguage. Each module contains one or more 'cardinal' and 'ordinal' functions\nand a 'struct' function. The 'cardinal' functions directly convert cardinal\nnumbers to a string-like representation of their spoken form. The 'ordinal'\nfunctions do the same but for ordinal numbers. The 'struct' functions convert\nnumbers to a polymorphic representation of their grammatical structure.\nSee the \"Text.Numeral\" module for information on how to use this library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fingertree" or ((hsPkgs.pkgs-errors).buildDepError "fingertree"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (if flags.integer-simple
          then [
            (hsPkgs."integer-simple" or ((hsPkgs.pkgs-errors).buildDepError "integer-simple"))
            ]
          else [
            (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
            ]);
        buildable = true;
        };
      tests = {
        "test-numerals" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."numerals" or ((hsPkgs.pkgs-errors).buildDepError "numerals"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-numerals" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."numerals" or ((hsPkgs.pkgs-errors).buildDepError "numerals"))
            ];
          buildable = true;
          };
        };
      };
    }