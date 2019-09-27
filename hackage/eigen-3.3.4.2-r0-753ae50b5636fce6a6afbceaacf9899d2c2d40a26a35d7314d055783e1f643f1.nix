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
      specVersion = "1.10";
      identifier = { name = "eigen"; version = "3.3.4.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-2015, Oleg Sidorkin,\n(c) 2018, chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "Oleg Sidorkin <oleg.sidorkin@gmail.com>";
      homepage = "https://github.com/chessai/eigen";
      url = "";
      synopsis = "Eigen C++ library (linear algebra: matrices, sparse matrices, vectors, numerical solvers).";
      description = "__NOTE__: This library does not follow PVP. Instead, it follows Eigen's versioning. Version\nX.Y.Z.W means that the Eigen version is X.Y.Z, and the haskell release is W, where each W\nrelease is for bug fixes/API improvements.\n\nThis module provides Haskell binding for <http://eigen.tuxfamily.org/ Eigen C++ library>.\n\nEigen is versatile.\n\n* It supports all matrix sizes, from small fixed-size matrices to arbitrarily large dense matrices, and even sparse matrices.\n\n* It supports all standard numeric types, including std::complex, integers, and is easily extensible to custom numeric types.\n\n* It supports various <http://eigen.tuxfamily.org/dox/group__TopicLinearAlgebraDecompositions.html matrix decompositions> and <http://eigen.tuxfamily.org/dox/group__TutorialGeometry.html geometry features>.\n\n* Its ecosystem of <http://eigen.tuxfamily.org/dox/unsupported/index.html unsupported modules> provides many specialized features such as non-linear optimization, matrix functions, a polynomial solver, FFT, and much more.\n\nEigen is fast.\n\n* Expression templates allow to intelligently remove temporaries and enable <http://eigen.tuxfamily.org/dox/TopicLazyEvaluation.html lazy evaluation>, when that is appropriate.\n\n* <http://eigen.tuxfamily.org/index.php?title=FAQ#Vectorization Explicit vectorization> is performed for SSE 2\\/3\\/4, ARM NEON, and AltiVec instruction sets, with graceful fallback to non-vectorized code.\n\n* Fixed-size matrices are fully optimized: dynamic memory allocation is avoided, and the loops are unrolled when that makes sense.\n\n* For large matrices, special attention is paid to cache-friendliness.\n\nEigen is reliable.\n\n* Algorithms are carefully selected for reliability. Reliability trade-offs are <http://eigen.tuxfamily.org/dox/group__TopicLinearAlgebraDecompositions.html clearly documented> and <http://eigen.tuxfamily.org/dox/classEigen_1_1JacobiSVD.html extremely> <http://eigen.tuxfamily.org/dox/classEigen_1_1FullPivHouseholderQR.html safe> <http://eigen.tuxfamily.org/dox/classEigen_1_1FullPivLU.html decompositions> are available.\n\n* Eigen is thoroughly tested through its own <http://eigen.tuxfamily.org/index.php?title=Tests test suite> (over 500 executables), the standard BLAS test suite, and parts of the LAPACK test suite.\n\nEigen is elegant.\n\n* The API is extremely <http://eigen.tuxfamily.org/index.php?title=API_Showcase clean and expressive> while feeling natural to C++ programmers, thanks to expression templates.\n\n* Implementing an algorithm on top of Eigen feels like just copying pseudocode.\n\nEigen has good compiler support as we run our test suite against many compilers to guarantee reliability and work around any compiler bugs.\nEigen also is standard C++98 and maintains very reasonable compilation times.\n\nEigen is licensed under the MPL2, which is a simple weak copyleft license. Common questions about the MPL2 are answered in the official MPL2 FAQ at <http://www.mozilla.org/MPL/2.0/FAQ.html>.\n\nNote that currently, a few features in Eigen rely on third-party code licensed under the LGPL: SimplicialCholesky, AMD ordering, and constrained_cg. Such features are explicitly disabled by compiling Eigen with the EIGEN_MPL2_ONLY preprocessor symbol defined.\n\nVirtually any software may use Eigen. For example, closed-source software may use Eigen without having to disclose its own source code. Many proprietary and closed-source software projects are using Eigen right now, as well as many BSD-licensed projects.\n\nDocumentation at the most extent replicates original <http://eigen.tuxfamily.org/dox/ Eigen documentation>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
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
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."eigen" or (buildDepError "eigen"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            ];
          buildable = true;
          };
        "test-solve-sparse" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."eigen" or (buildDepError "eigen"))
            ];
          buildable = true;
          };
        "test-rank" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."eigen" or (buildDepError "eigen"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            ];
          buildable = true;
          };
        "test-regression" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."eigen" or (buildDepError "eigen"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            ];
          buildable = true;
          };
        };
      };
    }