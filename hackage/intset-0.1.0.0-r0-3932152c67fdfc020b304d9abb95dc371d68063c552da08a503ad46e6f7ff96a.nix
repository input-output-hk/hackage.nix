{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { testing = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "intset"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Sam T.";
      maintainer = "Sam T. <pxqr.sta@gmail.com>";
      author = "Sam T.";
      homepage = "https://github.com/pxqr/intset";
      url = "";
      synopsis = "Pure, fast and memory efficient integer sets.";
      description = "This library provides persistent, time and space efficient integer\nsets implemented as dense big-endian patricia trees with buddy\nsuffixes compaction. In randomized settings this structure expected\nto be as fast as Data.IntSet from containers, but if a sets is\nlikely to have long continuous intervals it should be much faster.\n\n[/Release notes/]\n\n* /0.1.0.0:/ Initial version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bits-extras" or ((hsPkgs.pkgs-errors).buildDepError "bits-extras"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."intset" or ((hsPkgs.pkgs-errors).buildDepError "intset"))
            ];
          buildable = if !flags.testing then false else true;
          };
        "fusion" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."intset" or ((hsPkgs.pkgs-errors).buildDepError "intset"))
            ];
          buildable = if !flags.testing then false else true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."intset" or ((hsPkgs.pkgs-errors).buildDepError "intset"))
            ];
          buildable = if !flags.testing then false else true;
          };
        };
      };
    }