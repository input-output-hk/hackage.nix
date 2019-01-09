{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "workflow-extra"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Spiros Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "http://github.com/sboosali/workflow-extra#readme";
      url = "";
      synopsis = "TODO";
      description = "TODO";
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