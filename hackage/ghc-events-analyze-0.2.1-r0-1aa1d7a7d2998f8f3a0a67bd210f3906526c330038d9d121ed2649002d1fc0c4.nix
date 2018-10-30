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
        name = "ghc-events-analyze";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2013-2014 Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries, Duncan Coutts, Mikolaj Konarski";
      homepage = "";
      url = "";
      synopsis = "Analyze and visualize event logs";
      description = "ghc-events-analyze is a simple Haskell profiling tool that\nuses GHC's eventlog system. It helps with some profiling\nuse cases that are not covered by the existing GHC\nprofiling modes or tools. It has two major features:\n\n1. While ThreadScope shows CPU activity across all your\ncores, ghc-events-analyze shows CPU activity across all\nyour Haskell threads.\n\n2. It lets you label periods of time during program\nexecution (by instrumenting your code with special trace\ncalls) and then lets you visualize those time periods or\nget statistics on them.\n\nIt is very useful for profiling code when ghc's normal\nprofiling mode is not available, or when using profiling\nmode would perturb the code too much. It is also useful\nwhen you want time-profiling information with a breakdown\nover time rather than totals for the whole run.\n\nThe blog post\n<http://www.well-typed.com/blog/2014/02/ghc-events-analyze/ Performance profiling with ghc-events-analyze>\ndescribes the motivation in more detail.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ghc-events-analyze" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc-events)
            (hsPkgs.optparse-applicative)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-svg)
            (hsPkgs.SVGFonts)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.th-lift)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }