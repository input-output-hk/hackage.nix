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
      identifier = { name = "newsynth"; version = "0.4.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (c) 2012-2019 Neil J. Ross and Peter Selinger";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Neil J. Ross, Peter Selinger";
      homepage = "http://www.mathstat.dal.ca/~selinger/newsynth/";
      url = "";
      synopsis = "Exact and approximate synthesis of quantum circuits";
      description = "A library of algorithms for exact and approximate synthesis of\nquantum circuits over the Clifford+T gate set. This includes, among\nother things:\n\n* \"Quantum.Synthesis.GridSynth\": an efficient single-qubit\napproximate synthesis algorithm. From N. J. Ross and P. Selinger,\n\\\"Optimal ancilla-free Clifford+/T/ approximation of\n/z/-rotations\\\", <http://arxiv.org/abs/1403.2975>.\n\n* \"Quantum.Synthesis.MultiQubitSynthesis\": multi-qubit exact\nsynthesis algorithms. From B. Giles and P. Selinger, \\\"Exact\nsynthesis of multiqubit Clifford+/T/ circuits\\\", Physical Review A\n87, 032332, 2013, <http://arxiv.org/abs/1212.0506>.\n\n* \"Quantum.Synthesis.CliffordT\": the computation of\nMatsumoto-Amano normal forms. From K. Matsumoto and K. Amano,\n\\\"Representation of Quantum Circuits with Clifford and π\\/8\nGates\\\", <http://arxiv.org/abs/0806.3834>.\n\n* \"Quantum.Synthesis.RotationDecomposition\": an algorithm for\ndecomposing multi-qubit unitary operators into one- and two-level\nunitaries. See e.g. Section 4.5.1 of M. A. Nielsen and\nI. L. Chuang, \\\"Quantum Computation and Quantum Information\\\",\nCambridge University Press, 2002.\n\nThis package also provides an easy-to-use command line tool for\nsingle-qubit approximate synthesis.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.superdoc or (pkgs.pkgsBuildBuild.superdoc or (errorHandler.setupDepError "superdoc")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."fixedprec" or (errorHandler.buildDepError "fixedprec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "gridsynth" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."newsynth" or (errorHandler.buildDepError "newsynth"))
          ];
          buildable = true;
        };
      };
    };
  }