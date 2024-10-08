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
      identifier = { name = "lagrangian"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "http://github.com/jfischoff/lagrangian";
      url = "";
      synopsis = "Solve lagrangian multiplier problems";
      description = "Numerically solve convex lagrange multiplier problems with conjugate gradient descent.\n\nConvexity is key, otherwise the descent algorithm can return the wrong answer.\n\nConvexity can be tested by assuring that the hessian of the lagrangian is positive\ndefinite over region the function is defined in.\n\nI have provided test that the hessian is positive definite at a point, which is something,\nbut not enough to ensure that the whole function is convex.\n\nBe that as it may, if you know what the your lagrangian is convex you can use 'solve' to\nfind the minimum.\n\nFor example, find the maximum entropy with the constraint that the probabilities add\nup to one.\n\n@\nsolve 0.00001 (negate . sum . map (\\x -> x * log x), [(sum, 1)]) 3\n@\n\nGives the answer ([0.33, 0.33, 0.33], [-0.09])\n\nThe first elements of the result pair are the arguments for the objective function at the minimum.\nThe second elements are the lagrange multipliers.\n";
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