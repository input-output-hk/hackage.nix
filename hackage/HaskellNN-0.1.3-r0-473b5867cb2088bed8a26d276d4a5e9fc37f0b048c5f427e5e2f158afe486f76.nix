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
      specVersion = "1.6";
      identifier = { name = "HaskellNN"; version = "0.1.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Kiet Lam <ktklam9@gmail.com>";
      author = "Kiet Lam";
      homepage = "";
      url = "";
      synopsis = "High Performance Neural Network in Haskell";
      description = "High Performance Neural Network in Haskell\n\nProvides fast training algorithms using\nhmatrix's bindings to GSL and custom bindings\nto the liblbfgs C-library\n\nSupported training algorithms: Gradient Descent, Conjugate Gradient, BFGS, LBFGS\n\n- Users should focus on \"AI.Model\" for most usages (classification / regression)\n\n- Other modules are provided for user expansion if needed\n\nGo to <https://github.com/ktklam9/HaskellNN> for examples and tests for usage";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }