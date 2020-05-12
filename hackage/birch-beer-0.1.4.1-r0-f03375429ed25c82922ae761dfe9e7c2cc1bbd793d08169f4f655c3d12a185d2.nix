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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "birch-beer"; version = "0.1.4.1"; };
      license = "GPL-3.0-only";
      copyright = "2019 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/birch-beer#readme";
      url = "";
      synopsis = "Plot a colorful tree.";
      description = "Generate a tree for displaying a hierarchy of groups with colors, scaling, and more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SVGFonts" or (errorHandler.buildDepError "SVGFonts"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."diagrams" or (errorHandler.buildDepError "diagrams"))
          (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-graphviz" or (errorHandler.buildDepError "diagrams-graphviz"))
          (hsPkgs."diagrams-gtk" or (errorHandler.buildDepError "diagrams-gtk"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diversity" or (errorHandler.buildDepError "diversity"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."hierarchical-clustering" or (errorHandler.buildDepError "hierarchical-clustering"))
          (hsPkgs."hierarchical-spectral-clustering" or (errorHandler.buildDepError "hierarchical-spectral-clustering"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."matrix-market-attoparsec" or (errorHandler.buildDepError "matrix-market-attoparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."palette" or (errorHandler.buildDepError "palette"))
          (hsPkgs."plots" or (errorHandler.buildDepError "plots"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."sparse-linear-algebra" or (errorHandler.buildDepError "sparse-linear-algebra"))
          (hsPkgs."spectral-clustering" or (errorHandler.buildDepError "spectral-clustering"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."typed-spreadsheet" or (errorHandler.buildDepError "typed-spreadsheet"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "birch-beer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."birch-beer" or (errorHandler.buildDepError "birch-beer"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."diagrams" or (errorHandler.buildDepError "diagrams"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."hierarchical-spectral-clustering" or (errorHandler.buildDepError "hierarchical-spectral-clustering"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."sparse-linear-algebra" or (errorHandler.buildDepError "sparse-linear-algebra"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }