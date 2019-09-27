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
    flags = { build_lapacke = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "jalla"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "2011-2015, Christian Gosch";
      maintainer = "Christian Gosch <github@goschs.de>";
      author = "Christian Gosch";
      homepage = "https://github.com/cgo/jalla";
      url = "";
      synopsis = "Higher level functions for linear algebra. Wraps BLAS and LAPACKE.";
      description = "NOTE: Hackage does not know LAPACKE, therefore jalla and the documentation\nare not built there. You can find its documentation at\n<http://www.goschs.de/jalla>.\n\nJalla aims at providing high level functions for linear algebra computations which\nshould be fast and easy enough to use. Under the hood, BLAS and LAPACKE are used\n(LAPACKE is a standard C interface to LAPACK which is part of LAPACK since version 3.4).\n\nThe modules Numeric.Jalla.Matrix and Numeric.Jalla.Vector are probably\nthe most useful ones for users. Everything under Numeric.Jalla.Foreign\nis basically wrapping stuff.\n\nCurrently, I am adding new functions whenever I find some time. Please help, if you want to!\nThere are not many tests yet, and we need some nicer error reporting (nicer than exceptions).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."convertible" or (buildDepError "convertible"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ];
        libs = [
          (pkgs."lapacke" or (sysDepError "lapacke"))
          (pkgs."cblas" or (sysDepError "cblas"))
          (pkgs."blas" or (sysDepError "blas"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."jalla" or (buildDepError "jalla"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }