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
      identifier = { name = "fused-effects-squeal"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Ilya Kostyuchenko";
      maintainer = "ilyakooo0@gmail.com";
      author = "Ilya Kostyuchenko";
      homepage = "https://github.com/ilyakooo0/fused-effects-squeal#readme";
      url = "";
      synopsis = "A fused-effects adapter for squeal-postgresql.";
      description = "A fused-effects adapter for squeal-postgresql. It allows you to conjure `MonadPQ` instances and manage connection pools in a `fused-effects` stack.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
          (hsPkgs."squeal-postgresql" or (errorHandler.buildDepError "squeal-postgresql"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."unliftio-pool" or (errorHandler.buildDepError "unliftio-pool"))
        ];
        buildable = true;
      };
    };
  }