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
      specVersion = "1.10";
      identifier = { name = "hmatrix-nlopt"; version = "0.1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Matthew Peddie <mpeddie@gmail.com>";
      maintainer = "mpeddie@gmail.com";
      author = "Matthew Peddie";
      homepage = "https://github.com/peddie/hmatrix-nlopt";
      url = "";
      synopsis = "Interface HMatrix with the NLOPT minimizer";
      description = "A high-level interface to\n<http://ab-initio.mit.edu/wiki/index.php/NLopt the NLOPT solvers>\nusing @hmatrix@ vectors and matrices.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."nlopt-haskell" or (errorHandler.buildDepError "nlopt-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }