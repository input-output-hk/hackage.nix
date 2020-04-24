{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      with-sizeable = false;
      test-properties = true;
      test-strict = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "data-stringmap"; version = "1.0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Uwe Schmidt (uwe@fh-wedel.de), Sebastian Philipp (sebastian@spawnhost.de)";
      author = "Uwe Schmidt, Sebastian Philipp";
      homepage = "";
      url = "";
      synopsis = "An efficient implementation of maps from strings to arbitrary values";
      description = "An efficient implementation of maps from strings to arbitrary values.\nValues can associated with an arbitrary byte key.\nSearching for keys is very fast, but\nthe prefix tree probably consumes more memory than\n\"Data.Map\". The main differences are the special\n'prefixFind' functions, which can be used to perform prefix queries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (pkgs.lib).optional (flags.test-strict) (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.with-sizeable) (hsPkgs."data-size" or ((hsPkgs.pkgs-errors).buildDepError "data-size"));
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = (pkgs.lib).optionals (!(!flags.test-properties)) ([
            (hsPkgs."data-stringmap" or ((hsPkgs.pkgs-errors).buildDepError "data-stringmap"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."ghc-heap-view" or ((hsPkgs.pkgs-errors).buildDepError "ghc-heap-view"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ] ++ (pkgs.lib).optional (flags.with-sizeable) (hsPkgs."data-size" or ((hsPkgs.pkgs-errors).buildDepError "data-size")));
          buildable = if !flags.test-properties then false else true;
          };
        "strict" = {
          depends = (pkgs.lib).optionals (!(!flags.test-strict)) ([
            (hsPkgs."data-stringmap" or ((hsPkgs.pkgs-errors).buildDepError "data-stringmap"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."ghc-heap-view" or ((hsPkgs.pkgs-errors).buildDepError "ghc-heap-view"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ] ++ (pkgs.lib).optional (flags.with-sizeable) (hsPkgs."data-size" or ((hsPkgs.pkgs-errors).buildDepError "data-size")));
          buildable = if !flags.test-strict then false else true;
          };
        };
      };
    }