let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lagrangian"; version = "0.5.0.0"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."nonlinear-optimization" or (buildDepError "nonlinear-optimization"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."ad" or (buildDepError "ad"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."nonlinear-optimization" or (buildDepError "nonlinear-optimization"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."ad" or (buildDepError "ad"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }