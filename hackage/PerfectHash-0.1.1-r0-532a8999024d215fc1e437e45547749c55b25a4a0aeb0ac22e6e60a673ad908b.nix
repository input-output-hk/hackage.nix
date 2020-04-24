{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "PerfectHash"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Wotton <mwotton@gmail.com>";
      author = "Mark Wotton <mwotton@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A perfect hashing library for mapping bytestrings to values.";
      description = "A perfect hashing library for mapping bytestrings to values.\nInsertion is not supported (by design): this is just a binding\nto the C-based CMPH library (http://cmph.sf.net). Only fromList\nand lookup operations are supported, but in many circumstances\nthis is all that's required.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."digest" or ((hsPkgs.pkgs-errors).buildDepError "digest"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        libs = [ (pkgs."cmph" or ((hsPkgs.pkgs-errors).sysDepError "cmph")) ];
        buildable = true;
        };
      exes = {
        "benchmark" = {
          libs = [ (pkgs."cmph" or ((hsPkgs.pkgs-errors).sysDepError "cmph")) ];
          buildable = true;
          };
        "benchmark_trie" = {
          depends = [
            (hsPkgs."bytestring-trie" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-trie"))
            ];
          libs = [ (pkgs."cmph" or ((hsPkgs.pkgs-errors).sysDepError "cmph")) ];
          buildable = true;
          };
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          libs = [ (pkgs."cmph" or ((hsPkgs.pkgs-errors).sysDepError "cmph")) ];
          buildable = true;
          };
        };
      };
    }