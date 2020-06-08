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
      identifier = { name = "FSM"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Pablo Dominguez";
      maintainer = "pabdombal@alum.us.es";
      author = "Pablo Dominguez";
      homepage = "https://github.com/Pablo-Dominguez/my-stack-fsm-package#readme";
      url = "";
      synopsis = "Basic concepts of finite state machines.";
      description = "Please see the README on GitHub at <https://github.com/Pablo-Dominguez/my-stack-fsm-package#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }