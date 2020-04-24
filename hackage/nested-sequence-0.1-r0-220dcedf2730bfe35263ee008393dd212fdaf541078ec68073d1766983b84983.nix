{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "nested-sequence"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Balazs Komuves, Peter Divianszky";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) hu";
      author = "Balazs Komuves, Peter Divianszky";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "A list-like data structure with O(log(n)) random access";
      description = "A list-like data structure implemented using a nested data type and polymorphic\nrecursion. It supports O(log(n)) lookup while still having amortized O(1)\naccess to the left end of the sequence. Somewhat similar to finger trees,\nbut much simpler and more memory efficient; however, modifying the right end\nof the sequence is still slow.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "nested-sequence-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."nested-sequence" or ((hsPkgs.pkgs-errors).buildDepError "nested-sequence"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }