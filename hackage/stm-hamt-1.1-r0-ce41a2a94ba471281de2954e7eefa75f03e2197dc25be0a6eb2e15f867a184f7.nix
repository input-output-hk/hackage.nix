{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stm-hamt"; version = "1.1"; };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/stm-hamt";
      url = "";
      synopsis = "STM-specialised Hash Array Mapped Trie";
      description = "A low-level data-structure,\nwhich can be used to implement higher-level interfaces like\nhash-map and hash-set.\nSuch implementations are presented by\n<http://hackage.haskell.org/package/stm-containers the \"stm-containers\" library>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deferred-folds" or ((hsPkgs.pkgs-errors).buildDepError "deferred-folds"))
          (hsPkgs."focus" or ((hsPkgs.pkgs-errors).buildDepError "focus"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."primitive-extras" or ((hsPkgs.pkgs-errors).buildDepError "primitive-extras"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."deferred-folds" or ((hsPkgs.pkgs-errors).buildDepError "deferred-folds"))
            (hsPkgs."focus" or ((hsPkgs.pkgs-errors).buildDepError "focus"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."rerebase" or ((hsPkgs.pkgs-errors).buildDepError "rerebase"))
            (hsPkgs."stm-hamt" or ((hsPkgs.pkgs-errors).buildDepError "stm-hamt"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "concurrent-insertion-bench" = {
          depends = [
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."mwc-random-monad" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random-monad"))
            (hsPkgs."list-t" or ((hsPkgs.pkgs-errors).buildDepError "list-t"))
            (hsPkgs."focus" or ((hsPkgs.pkgs-errors).buildDepError "focus"))
            (hsPkgs."stm-hamt" or ((hsPkgs.pkgs-errors).buildDepError "stm-hamt"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."rebase" or ((hsPkgs.pkgs-errors).buildDepError "rebase"))
            ];
          buildable = true;
          };
        };
      };
    }