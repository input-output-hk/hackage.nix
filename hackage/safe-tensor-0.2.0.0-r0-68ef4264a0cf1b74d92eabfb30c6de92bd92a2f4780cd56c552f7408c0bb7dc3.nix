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
      specVersion = "1.12";
      identifier = { name = "safe-tensor"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2020 Nils Alex";
      maintainer = "nils.alex@fau.de";
      author = "Nils Alex";
      homepage = "https://github.com/nilsalex/safe-tensor#readme";
      url = "";
      synopsis = "Dependently typed tensor algebra";
      description = "For an introduction to the library, see \"Math.Tensor.Safe\". For more information, see the README on GitHub at <https://github.com/nilsalex/safe-tensor#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          ];
        buildable = true;
        };
      };
    }