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
      identifier = {
        name = "uniqueness-periods-vector-properties";
        version = "0.2.0.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/uniqueness-periods-vector-properties";
      url = "";
      synopsis = "Metrics for the maximum element for the uniqueness-periods-vector packages family.";
      description = "Metrics for the maximum element for the uniqueness-periods-vector packages family. Generalization of the DobutokO.Poetry.Norms and DobutokO.Poetry.Norms.Extended modules from dobuotokO-poetry package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."uniqueness-periods-vector" or (errorHandler.buildDepError "uniqueness-periods-vector"))
          ];
        buildable = true;
        };
      };
    }