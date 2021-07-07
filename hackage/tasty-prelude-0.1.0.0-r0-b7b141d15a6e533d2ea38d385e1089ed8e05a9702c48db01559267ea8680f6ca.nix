{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      all = false;
      ant-xml = false;
      bdd = false;
      bench = false;
      checklist = false;
      dejafu = false;
      discover = false;
      fail-fast = false;
      golden = false;
      grading-system = false;
      hedgehog = false;
      html = false;
      hspec = false;
      hunit = false;
      inspection-testing = false;
      leancheck = false;
      lua = false;
      quickcheck = false;
      quickcheck-laws = false;
      rerun = false;
      silver = false;
      smallcheck = false;
      sugar = false;
      test-reporter = false;
      th = false;
      tmux = false;
      wai = false;
      };
    package = {
      specVersion = "3.0";
      identifier = { name = "tasty-prelude"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2021, Marcin Szamotulski";
      maintainer = "Marcin Szamotulski <coot@coot.me>";
      author = "Marcin Szamotulski <coot@coot.me>";
      homepage = "https://github.com/coot/tasty-prelude";
      url = "";
      synopsis = "Unopinionated top-level entry point to tasty ecosystem.";
      description = "The package exposes 'Tast.Tasty.Prelude' module build out of several modules\naccross various tasty packages and re-exports modules from many packages\navailable in the tasty ecosystem.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((((((((((((((((((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
          (hsPkgs."tasty-focus" or (errorHandler.buildDepError "tasty-focus"))
          ] ++ (pkgs.lib).optional (flags.ant-xml || flags.all) (hsPkgs."tasty-ant-xml" or (errorHandler.buildDepError "tasty-ant-xml"))) ++ (pkgs.lib).optional (flags.bdd || flags.all) (hsPkgs."tasty-bdd" or (errorHandler.buildDepError "tasty-bdd"))) ++ (pkgs.lib).optional (flags.bench || flags.all) (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))) ++ (pkgs.lib).optional (flags.checklist || flags.all) (hsPkgs."tasty-checklist" or (errorHandler.buildDepError "tasty-checklist"))) ++ (pkgs.lib).optional (flags.dejafu || flags.all) (hsPkgs."tasty-dejafu" or (errorHandler.buildDepError "tasty-dejafu"))) ++ (pkgs.lib).optional (flags.discover || flags.all) (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))) ++ (pkgs.lib).optional (flags.fail-fast || flags.all) (hsPkgs."tasty-fail-fast" or (errorHandler.buildDepError "tasty-fail-fast"))) ++ (pkgs.lib).optional (flags.golden || flags.all) (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))) ++ (pkgs.lib).optional ((flags.grading-system || flags.all) && (compiler.isGhc && (compiler.version).ge "8.8")) (hsPkgs."tasty-grading-system" or (errorHandler.buildDepError "tasty-grading-system"))) ++ (pkgs.lib).optional (flags.hedgehog || flags.all) (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))) ++ (pkgs.lib).optional (flags.hunit || flags.all) (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))) ++ (pkgs.lib).optional (flags.html || flags.all) (hsPkgs."tasty-html" or (errorHandler.buildDepError "tasty-html"))) ++ (pkgs.lib).optional (flags.hspec || flags.all) (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))) ++ (pkgs.lib).optional (flags.inspection-testing || flags.all) (hsPkgs."tasty-inspection-testing" or (errorHandler.buildDepError "tasty-inspection-testing"))) ++ (pkgs.lib).optional (flags.leancheck || flags.all) (hsPkgs."tasty-leancheck" or (errorHandler.buildDepError "tasty-leancheck"))) ++ (pkgs.lib).optional (flags.lua || flags.all) (hsPkgs."tasty-lua" or (errorHandler.buildDepError "tasty-lua"))) ++ (pkgs.lib).optional (flags.quickcheck || flags.all) (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))) ++ (pkgs.lib).optional (flags.quickcheck-laws || flags.all) (hsPkgs."tasty-quickcheck-laws" or (errorHandler.buildDepError "tasty-quickcheck-laws"))) ++ (pkgs.lib).optional (flags.rerun || flags.all) (hsPkgs."tasty-rerun" or (errorHandler.buildDepError "tasty-rerun"))) ++ (pkgs.lib).optional (flags.silver || flags.all) (hsPkgs."tasty-silver" or (errorHandler.buildDepError "tasty-silver"))) ++ (pkgs.lib).optional (flags.smallcheck || flags.all) (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))) ++ (pkgs.lib).optional (flags.sugar || flags.all) (hsPkgs."tasty-sugar" or (errorHandler.buildDepError "tasty-sugar"))) ++ (pkgs.lib).optional (flags.test-reporter || flags.all) (hsPkgs."tasty-test-reporter" or (errorHandler.buildDepError "tasty-test-reporter"))) ++ (pkgs.lib).optional (flags.th || flags.all) (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))) ++ (pkgs.lib).optional (flags.tmux || flags.all) (hsPkgs."tasty-tmux" or (errorHandler.buildDepError "tasty-tmux"))) ++ (pkgs.lib).optional (flags.wai || flags.all) (hsPkgs."tasty-wai" or (errorHandler.buildDepError "tasty-wai"));
        buildable = true;
        };
      };
    }