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
    flags = { examples = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "eigen-hhlo"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "le.niu@hotmail.com";
      author = "overshiki";
      homepage = "https://github.com/overshiki/eigen-hhlo";
      url = "";
      synopsis = "Dense linear algebra on HHLO (SVD, QR, eigenvalue, Cholesky, LU)";
      description = "eigen-hhlo provides singular value decomposition, QR decomposition,\nsymmetric eigenvalue decomposition, Cholesky factorization, and LU\ndecomposition as first-class operations within the HHLO ecosystem.\n.\nThe library targets both CPU (via LAPACK custom calls) and GPU\n(via cuSOLVER custom calls, future work) through PJRT, with no\nhost-side numerical fallback.\n.\nSee the README for important runtime notes regarding CPU custom-call\nregistration limitations in the current PJRT CPU plugin.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "eigen-hhlo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eigen-hhlo" or (errorHandler.buildDepError "eigen-hhlo"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "example-cholesky" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eigen-hhlo" or (errorHandler.buildDepError "eigen-hhlo"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "example-svd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eigen-hhlo" or (errorHandler.buildDepError "eigen-hhlo"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "example-qr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eigen-hhlo" or (errorHandler.buildDepError "eigen-hhlo"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "example-eigenvalue" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eigen-hhlo" or (errorHandler.buildDepError "eigen-hhlo"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "example-lu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eigen-hhlo" or (errorHandler.buildDepError "eigen-hhlo"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "example-pipeline" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eigen-hhlo" or (errorHandler.buildDepError "eigen-hhlo"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.examples then false else true;
        };
        "example-gpu-setup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eigen-hhlo" or (errorHandler.buildDepError "eigen-hhlo"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
      tests = {
        "eigen-hhlo-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eigen-hhlo" or (errorHandler.buildDepError "eigen-hhlo"))
            (hsPkgs."hhlo" or (errorHandler.buildDepError "hhlo"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }