{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dom-lt"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow, 2009";
      maintainer = "Andreas Klebinger <klebinger.andreas@gmx.at>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "The Lengauer-Tarjan graph dominators algorithm.";
      description = "The Lengauer-Tarjan graph dominators algorithm.\nIncluded are ways to compute domination and post-domination relationships.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.containers) ];
        };
      tests = {
        "dom-lt-tests" = {
          depends = [ (hsPkgs.base) (hsPkgs.dom-lt) (hsPkgs.containers) ];
          };
        };
      benchmarks = {
        "dom-lt-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dom-lt)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            ];
          };
        };
      };
    }