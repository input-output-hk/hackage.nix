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
      identifier = { name = "eigen"; version = "1.2.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2015, Oleg Sidorkin";
      maintainer = "Oleg Sidorkin <oleg.sidorkin@gmail.com>";
      author = "Oleg Sidorkin <oleg.sidorkin@gmail.com>";
      homepage = "https://github.com/osidorkin/haskell-eigen";
      url = "";
      synopsis = "Eigen C++ library (linear algebra: matrices, vectors, numerical solvers).";
      description = "This module provides Haskell binding for Eigen C++ library.\nEigen is a C++ template library for linear algebra: matrices, vectors, numerical solvers, and related algorithms.\nEigen home page is <http://eigen.tuxfamily.org/>.\n\nEigen is licensed under the MPL2, which is a simple weak copyleft license. Common questions about the MPL2 are answered in the official MPL2 FAQ at <http://www.mozilla.org/MPL/2.0/FAQ.html>.\n\nNote that currently, a few features in Eigen rely on third-party code licensed under the LGPL: SimplicialCholesky, AMD ordering, and constrained_cg. Such features are explicitly disabled by compiling Eigen with the EIGEN_MPL2_ONLY preprocessor symbol defined.\n\nVirtually any software may use Eigen. For example, closed-source software may use Eigen without having to disclose its own source code. Many proprietary and closed-source software projects are using Eigen right now, as well as many BSD-licensed projects.\n\nSome parts of documentation strings are based or replicate original Eigen documentation which is available at <http://eigen.tuxfamily.org/dox/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          ];
        libs = [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
        buildable = true;
        };
      tests = {
        "test-solve" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."eigen" or (buildDepError "eigen"))
            ];
          buildable = true;
          };
        "test-rank" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."eigen" or (buildDepError "eigen"))
            ];
          buildable = true;
          };
        "test-regression" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."eigen" or (buildDepError "eigen"))
            ];
          buildable = true;
          };
        };
      };
    }