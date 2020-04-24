{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ttrie"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2014-2015 Michael Schröder";
      maintainer = "mc.schroeder@gmail.com";
      author = "Michael Schröder";
      homepage = "http://github.com/mcschroeder/ttrie";
      url = "";
      synopsis = "Contention-free STM hash map";
      description = "A contention-free STM hash map.\n\\\"Contention-free\\\" means that the map will never cause spurious conflicts.\nA transaction operating on the map will only ever have to retry if\nanother transaction is operating on the same key at the same time.\n\nThis is an implementation of the /transactional trie/,\nwhich is basically a /lock-free concurrent hash trie/ lifted into STM.\nFor a detailed discussion, including an evaluation of its performance,\nsee Chapter 4 of <https://github.com/mcschroeder/thesis my master's thesis>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."atomic-primops" or ((hsPkgs.pkgs-errors).buildDepError "atomic-primops"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "map-properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."ttrie" or ((hsPkgs.pkgs-errors).buildDepError "ttrie"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion-plus" or ((hsPkgs.pkgs-errors).buildDepError "criterion-plus"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
            (hsPkgs."stm-stats" or ((hsPkgs.pkgs-errors).buildDepError "stm-stats"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."ttrie" or ((hsPkgs.pkgs-errors).buildDepError "ttrie"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }