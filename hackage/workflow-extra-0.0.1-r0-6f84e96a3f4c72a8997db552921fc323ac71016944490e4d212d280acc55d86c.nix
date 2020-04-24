{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "workflow-extra"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Spiros Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "http://github.com/sboosali/workflow-extra#readme";
      url = "";
      synopsis = "Utilities (e.g. Googling the clipboard contents) for the `workflow` pacakge";
      description = "\nOver functions to defined your own custom workflows, which should be shareable across platforms. (for example, the usage of \"M-c\" (\"meta\") over \"A-c\" (\"alt\") or \"C-c\" (\"control\") is encouraged).\n\ndocumention at \"Workflow.Derived\".\n\nsee the source of \"Workflow.Derived.Main\" for an example.\n\nCombine with one of the platform-specific packages (@workflow-osx@, @workflow-windows@, @workflow-x11@, etc) with \"Workflow.Derived.Repl\" to verify that the bindings behave correctly on your system.\n\ntransitive dependencies:\n\n<<images/workflow-extra.png>>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."workflow-types" or ((hsPkgs.pkgs-errors).buildDepError "workflow-types"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."Earley" or ((hsPkgs.pkgs-errors).buildDepError "Earley"))
          ];
        buildable = true;
        };
      exes = {
        "example-workflow-extra" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."workflow-extra" or ((hsPkgs.pkgs-errors).buildDepError "workflow-extra"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."workflow-extra" or ((hsPkgs.pkgs-errors).buildDepError "workflow-extra"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        "unittest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."workflow-extra" or ((hsPkgs.pkgs-errors).buildDepError "workflow-extra"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "command" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."workflow-extra" or ((hsPkgs.pkgs-errors).buildDepError "workflow-extra"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }