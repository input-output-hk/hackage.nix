{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "workflow-pure";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Spiros Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "http://github.com/sboosali/workflow-pure#readme";
      url = "";
      synopsis = "manipulate `workflow-types:Workflow`'s";
      description = "\nperform some static analysis on a workflow, without executing it (which would be platform-dependent).\n\ndocumention at \"Workflow.Pure\".\n\nsee the source of \"Workflow.Pure.Main\" for an example.\n\ntransitive dependencies:\n\n<<images/workflow-pure.png>>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.workflow-types)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.deepseq)
          (hsPkgs.semigroups)
          (hsPkgs.exceptions)
          (hsPkgs.free)
        ];
      };
      exes = {
        "example-workflow-pure" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.workflow-pure)
          ];
        };
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.workflow-pure)
            (hsPkgs.doctest)
          ];
        };
        "unittest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.workflow-pure)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "command" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.workflow-pure)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }