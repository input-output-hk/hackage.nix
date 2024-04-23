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
      specVersion = "2.4";
      identifier = { name = "k8s-wrapper"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "alexander.vershilov@sirius.online, backend-dev@sirius.online";
      author = "Alexander Vershilov";
      homepage = "https://github.com/cheopslab/k8s-wrapper";
      url = "";
      synopsis = "Application wrapper for the k8s environment";
      description = "A wrapper for the k8s environment. It provides the logic that\ncan automate the communication with k8s and easily provide proper\nrun in the application.\nFor more details see documentation in the \"Network.K8s.Application\"\nmodule";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-middleware-prometheus" or (errorHandler.buildDepError "wai-middleware-prometheus"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
        ];
        buildable = true;
      };
      tests = {
        "k8s-wrapper-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."k8s-wrapper" or (errorHandler.buildDepError "k8s-wrapper"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ];
          buildable = true;
        };
      };
    };
  }