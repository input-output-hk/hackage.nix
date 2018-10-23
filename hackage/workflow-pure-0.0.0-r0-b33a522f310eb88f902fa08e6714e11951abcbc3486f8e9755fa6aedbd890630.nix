{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "workflow-pure";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Spiros Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "http://github.com/sboosali/workflow-pure#readme";
      url = "";
      synopsis = "TODO";
      description = "TODO";
      buildType = "Simple";
    };
    components = {
      "workflow-pure" = {
        depends  = [
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.workflow-pure)
          ];
        };
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.workflow-pure)
            (hsPkgs.doctest)
          ];
        };
        "unittest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.workflow-pure)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "command" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.workflow-pure)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }