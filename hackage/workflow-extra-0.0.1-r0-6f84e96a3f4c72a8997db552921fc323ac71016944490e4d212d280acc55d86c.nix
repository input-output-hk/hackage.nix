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
          (hsPkgs.base)
          (hsPkgs.workflow-types)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.exceptions)
          (hsPkgs.free)
          (hsPkgs.Earley)
          ];
        };
      exes = {
        "example-workflow-extra" = {
          depends = [ (hsPkgs.base) (hsPkgs.workflow-extra) ];
          };
        };
      tests = {
        "doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.workflow-extra) (hsPkgs.doctest) ];
          };
        "unittest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.workflow-extra)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      benchmarks = {
        "command" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.workflow-extra)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            ];
          };
        };
      };
    }