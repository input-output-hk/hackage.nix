{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "SBench"; version = "0.1.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
          (hsPkgs."gnuplot" or ((hsPkgs.pkgs-errors).buildDepError "gnuplot"))
          (hsPkgs."hp2any-core" or ((hsPkgs.pkgs-errors).buildDepError "hp2any-core"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."txt-sushi" or ((hsPkgs.pkgs-errors).buildDepError "txt-sushi"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ];
        buildable = true;
        };
      };
    }