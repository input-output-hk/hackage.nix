{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lagrangian"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "(c) Jonathan Fischoff 2012-2014, (c) Eric Pashman 2014";
      homepage = "http://github.com/jfischoff/lagrangian";
      url = "";
      synopsis = "Solve Lagrange multiplier problems";
      description = "Numerically solve convex Lagrange multiplier problems with conjugate gradient descent.\n\nFor some background on the method of Lagrange multipliers checkout the wikipedia page\n<http://en.wikipedia.org/wiki/Lagrange_multiplier>\n\nHere is an example from the Wikipedia page on Lagrange multipliers\nMaximize f(x, y) = x + y, subject to the constraint x^2 + y^2 = 1\n\n@\n\\> maximize 0.00001 (\\\\[x, y] -> x + y) [(\\\\[x, y] -> x^2 + y^2) \\<=\\> 1] 2\nRight ([0.707,0.707], [-0.707])\n@\n\nFor more information look here: <http://en.wikipedia.org/wiki/Lagrange_multiplier#Example_1>\n\nFor example, to find the maximum entropy with the constraint that the probabilities sum\nto one.\n\n@\n\\> maximize 0.00001 (negate . sum . map (\\\\x -> x * log x)) [sum \\<=\\> 1] 3\nRight ([0.33, 0.33, 0.33], [-0.09])\n@\n\nThe first elements of the result pair are the arguments for the\nobjective function at the maximum. The second elements are the Lagrange multipliers.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."nonlinear-optimization" or ((hsPkgs.pkgs-errors).buildDepError "nonlinear-optimization"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."nonlinear-optimization" or ((hsPkgs.pkgs-errors).buildDepError "nonlinear-optimization"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }