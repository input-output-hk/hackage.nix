{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { graph = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghc-vis";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Dennis Felsing 2012";
      maintainer = "Dennis Felsing <dennis@felsin9.de>";
      author = "Dennis Felsing <dennis@felsin9.de>";
      homepage = "http://felsin9.de/nnis/ghc-vis";
      url = "";
      synopsis = "Live visualization of data structures in GHCi";
      description = "Visualize live data structures in GHCi. Evaluation is not\nforced and you can interact with the visualized data\nstructures. This allows seeing Haskell's lazy evaluation\nand sharing in action.\n\nSee <http://felsin9.de/nnis/ghc-vis/#basic-usage> for the\nbasic usage of ghc-vis or watch a short video demonstrating\nhow it can be used with GHCi's debugger:\n<http://felsin9.de/nnis/ghc-vis/#combined-debugger>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.fgl)
          (hsPkgs.deepseq)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.gtk)
          (hsPkgs.cairo)
          (hsPkgs.ghc-heap-view)
        ] ++ pkgs.lib.optionals (flags.graph) [
          (hsPkgs.graphviz)
          (hsPkgs.xdot)
        ];
      };
    };
  }