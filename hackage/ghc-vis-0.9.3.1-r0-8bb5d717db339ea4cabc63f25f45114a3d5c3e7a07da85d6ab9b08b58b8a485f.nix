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
    flags = { graph = true; full = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ghc-vis"; version = "0.9.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Dennis Felsing 2012-2018";
      maintainer = "Dennis Felsing <dennis@felsing.org>";
      author = "Dennis Felsing, Joachim Breitner, Contributors";
      homepage = "https://dennis.felsing.org/ghc-vis";
      url = "";
      synopsis = "Live visualization of data structures in GHCi";
      description = "Visualize live data structures in GHCi. Evaluation is not\nforced and you can interact with the visualized data\nstructures. This allows seeing Haskell's lazy evaluation\nand sharing in action.\n\nSee <https://dennis.felsing.org/ghc-vis/#basic-usage> for the\nbasic usage of ghc-vis or watch a short video demonstrating\nhow it can be used with GHCi's debugger:\n<https://dennis.felsing.org/ghc-vis/#combined-debugger>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
          (hsPkgs."svgcairo" or (errorHandler.buildDepError "svgcairo"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."ghc-heap-view" or (errorHandler.buildDepError "ghc-heap-view"))
        ] ++ pkgs.lib.optionals (flags.graph) [
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."xdot" or (errorHandler.buildDepError "xdot"))
        ];
        buildable = true;
      };
    };
  }