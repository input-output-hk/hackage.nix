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
      specVersion = "1.2";
      identifier = { name = "SBench"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ds@informatik.uni-bonn.de";
      author = "Daniel Seidel";
      homepage = "";
      url = "";
      synopsis = "A benchmark suite for runtime and heap measurements over\na series of inputs.";
      description = "The package provides a framework for heap and runtime measurements\nfor single Haskell functions. For heap measurements simple programs\nare created, compiled with profiling options and run. You can do\neither a heap profile or a graph for the maximal heap consumption\nof a function over different inputsizes. For runtime measurements\nthe criterion library is used.\nMeasurement data can be stored in a special file format providing\nbesides the data some meta information about the measurement.\nFurthermore measured data can be plotted easily using gnuplot.\nIn particular, it is possible to compare measurements for different\nfunctions (e.g. different version of a semantically equivalent\nfunction) in one diagram. By using gnuplot for drawing, the\nappearance of a diagram is very flexible and can be adjusted\ndirectly to, for example, the style of your paper.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
          (hsPkgs."hp2any-core" or (errorHandler.buildDepError "hp2any-core"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }