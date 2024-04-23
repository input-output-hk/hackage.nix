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
      specVersion = "1.8";
      identifier = { name = "lagrangian"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "http://github.com/jfischoff/lagrangian";
      url = "";
      synopsis = "Solve Lagrange multiplier problems";
      description = "Numerically solve convex Lagrange multiplier problems with conjugate gradient descent.\n\nFor some background on the method of Lagrange multipliers checkout the wikipedia page\n<http://en.wikipedia.org/wiki/Lagrange_multiplier>\n\nHere is an example from the Wikipedia page on Lagrange multipliers\nMaximize f(x, y) = x + y, subject to the constraint x^2 + y^2 = 1\n\n@\n\\> maximize 0.00001 (\\\\[x, y] -> x + y) [(\\\\[x, y] -> x^2 + y^2) \\<=\\> 1] 2\nRight ([0.707,0.707], [-0.707])\n@\n\nFor more information look here: <http://en.wikipedia.org/wiki/Lagrange_multiplier#Example_1>\n\nFor example, to find the maximum entropy with the constraint that the probabilities sum\nto one.\n\n@\n\\> maximize 0.00001 (negate . sum . map (\\\\x -> x * log x)) [sum \\<=\\> 1] 3\nRight ([0.33, 0.33, 0.33], [-0.09])\n@\n\nThe first elements of the result pair are the arguments for the\nobjective function at the maximum. The second elements are the Lagrange multipliers.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."nonlinear-optimization" or (errorHandler.buildDepError "nonlinear-optimization"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nonlinear-optimization" or (errorHandler.buildDepError "nonlinear-optimization"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }