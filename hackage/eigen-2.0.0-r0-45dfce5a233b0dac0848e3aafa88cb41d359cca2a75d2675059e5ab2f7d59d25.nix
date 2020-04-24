{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "eigen"; version = "2.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      tests = {
        "test-solve" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."eigen" or ((hsPkgs.pkgs-errors).buildDepError "eigen"))
            ];
          buildable = true;
          };
        "test-rank" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."eigen" or ((hsPkgs.pkgs-errors).buildDepError "eigen"))
            ];
          buildable = true;
          };
        "test-regression" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."eigen" or ((hsPkgs.pkgs-errors).buildDepError "eigen"))
            ];
          buildable = true;
          };
        };
      };
    }