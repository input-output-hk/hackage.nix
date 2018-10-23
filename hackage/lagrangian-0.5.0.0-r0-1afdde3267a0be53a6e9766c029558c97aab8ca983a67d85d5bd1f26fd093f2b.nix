{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "lagrangian";
        version = "0.5.0.0";
      };
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
      "lagrangian" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.nonlinear-optimization)
          (hsPkgs.vector)
          (hsPkgs.ad)
          (hsPkgs.hmatrix)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.nonlinear-optimization)
            (hsPkgs.vector)
            (hsPkgs.ad)
            (hsPkgs.hmatrix)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }