{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "eigen";
        version = "1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Oleg Sidorkin";
      maintainer = "Oleg Sidorkin <oleg.sidorkin@gmail.com>";
      author = "Oleg Sidorkin <oleg.sidorkin@gmail.com>";
      homepage = "https://github.com/osidorkin/haskell-eigen";
      url = "";
      synopsis = "Eigen C++ library (linear algebra: matrices, vectors, numerical solvers, and related algorithms).";
      description = "This module provides Haskell binding for Eigen C++ library.\nEigen is a C++ template library for linear algebra: matrices, vectors, numerical solvers, and related algorithms.\nEigen home page is <http://eigen.tuxfamily.org/>.\n\nEigen is licensed under the MPL2, which is a simple weak copyleft license. Common questions about the MPL2 are answered in the official MPL2 FAQ at <http://www.mozilla.org/MPL/2.0/FAQ.html>.\n\nNote that currently, a few features in Eigen rely on third-party code licensed under the LGPL: SimplicialCholesky, AMD ordering, and constrained_cg. Such features are explicitly disabled by compiling Eigen with the EIGEN_MPL2_ONLY preprocessor symbol defined.\n\nVirtually any software may use Eigen. For example, closed-source software may use Eigen without having to disclose its own source code. Many proprietary and closed-source software projects are using Eigen right now, as well as many BSD-licensed projects.\n\nSome parts of documentation strings are based or replicate original Eigen documentation which is available at <http://eigen.tuxfamily.org/dox/>.";
      buildType = "Simple";
    };
    components = {
      "eigen" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.primitive)
        ];
        libs = [ (pkgs.stdc++) ];
      };
    };
  }