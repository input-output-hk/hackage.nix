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
    flags = {
      exe = true;
      exe-delaunay = true;
      exe-voronoi = false;
      exe-hull = false;
      exe-hs = false;
      exe-am = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "qhull"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2018 Stéphane Laurent";
      maintainer = "Andrew U. Frank";
      author = "Stéphane Laurent";
      homepage = "https://github.com/stla/qhull#readme";
      url = "";
      synopsis = "Delaunay triangulation, Voronoi diagrams and convex hulls. ";
      description = "Based on the qhull C library.\nMaintenance version to bring it up to current ghc-version (ghc-8.10.7, lts-18.28).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."insert-ordered-containers" or (errorHandler.buildDepError "insert-ordered-containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."Unique" or (errorHandler.buildDepError "Unique"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."toysolver" or (errorHandler.buildDepError "toysolver"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."combinat" or (errorHandler.buildDepError "combinat"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          ];
        buildable = true;
        };
      exes = {
        "test_delaunay" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qhull" or (errorHandler.buildDepError "qhull"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."insert-ordered-containers" or (errorHandler.buildDepError "insert-ordered-containers"))
            ];
          buildable = if flags.exe || flags.exe-delaunay then true else false;
          };
        "test_voronoi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qhull" or (errorHandler.buildDepError "qhull"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
            ];
          buildable = if flags.exe || flags.exe-voronoi then true else false;
          };
        "test_convexhull" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qhull" or (errorHandler.buildDepError "qhull"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."insert-ordered-containers" or (errorHandler.buildDepError "insert-ordered-containers"))
            (hsPkgs."combinat" or (errorHandler.buildDepError "combinat"))
            (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            ];
          buildable = if flags.exe || flags.exe-hull then true else false;
          };
        "test_halfspaces" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qhull" or (errorHandler.buildDepError "qhull"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            ];
          buildable = if flags.exe || flags.exe-hs then true else false;
          };
        "adjacencymatrix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qhull" or (errorHandler.buildDepError "qhull"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = if flags.exe || flags.exe-am then true else false;
          };
        };
      };
    }