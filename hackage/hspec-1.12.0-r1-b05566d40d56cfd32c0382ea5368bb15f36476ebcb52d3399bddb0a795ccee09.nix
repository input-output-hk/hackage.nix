{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hspec"; version = "1.12.0"; };
      license = "MIT";
      copyright = "(c) 2011-2014 Simon Hengel,\n(c) 2011-2012 Trystan Spangler,\n(c) 2011 Greg Weber";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "A Testing Framework for Haskell";
      description = "Hspec is a testing framework for Haskell. It is inspired by\nthe Ruby library RSpec. Some of Hspec's distinctive features\nare:\n\n* a friendly DSL for defining tests\n\n* integration with QuickCheck, SmallCheck, and HUnit\n\n* parallel test execution\n\n* automatic discovery of test files\n\nThe Hspec Manual is at <http://hspec.github.io/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))
          (hsPkgs."setenv" or ((hsPkgs.pkgs-errors).buildDepError "setenv"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."quickcheck-io" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-io"))
          (hsPkgs."hspec-expectations" or ((hsPkgs.pkgs-errors).buildDepError "hspec-expectations"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          ];
        buildable = true;
        };
      exes = {
        "hspec-discover" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))
            (hsPkgs."setenv" or ((hsPkgs.pkgs-errors).buildDepError "setenv"))
            (hsPkgs."silently" or ((hsPkgs.pkgs-errors).buildDepError "silently"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-io" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-io"))
            (hsPkgs."hspec-expectations" or ((hsPkgs.pkgs-errors).buildDepError "hspec-expectations"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."hspec-meta" or ((hsPkgs.pkgs-errors).buildDepError "hspec-meta"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."stringbuilder" or ((hsPkgs.pkgs-errors).buildDepError "stringbuilder"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            ];
          buildable = true;
          };
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "hspec-discover-spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hspec-meta" or ((hsPkgs.pkgs-errors).buildDepError "hspec-meta"))
            ];
          buildable = true;
          };
        };
      };
    }