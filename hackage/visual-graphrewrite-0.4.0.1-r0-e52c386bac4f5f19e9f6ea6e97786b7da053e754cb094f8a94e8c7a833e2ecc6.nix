{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "visual-graphrewrite"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "zsol@elte.hu";
      author = "Zsolt Dollenstein";
      homepage = "http://github.com/zsol/visual-graphrewrite/";
      url = "";
      synopsis = "Visualize the graph-rewrite steps of a Haskell program";
      description = "Visualize the graph-rewrite steps of a Haskell program. Currently it only shows the right-hand-sides of rewrite rules (function alternatives).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.cairo)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.fgl)
          (hsPkgs.fgl)
          (hsPkgs.glade)
          (hsPkgs.graphviz)
          (hsPkgs.gtk)
          (hsPkgs.haskell-src)
          (hsPkgs.ipprint)
          (hsPkgs.isevaluated)
          (hsPkgs.lazysmallcheck)
          (hsPkgs.parallel)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.strict-concurrency)
          (hsPkgs.svgcairo)
          (hsPkgs.value-supply)
          ];
        };
      exes = {
        "visual-graphrewrite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.cairo)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.fgl)
            (hsPkgs.fgl)
            (hsPkgs.glade)
            (hsPkgs.graphviz)
            (hsPkgs.gtk)
            (hsPkgs.haskell-src)
            (hsPkgs.ipprint)
            (hsPkgs.isevaluated)
            (hsPkgs.lazysmallcheck)
            (hsPkgs.parallel)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.strict-concurrency)
            (hsPkgs.svgcairo)
            (hsPkgs.value-supply)
            ];
          };
        };
      };
    }