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
      specVersion = "3.0";
      identifier = { name = "typed-gui"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "shangdizhixia1993@163.com";
      author = "sdzx-1";
      homepage = "";
      url = "";
      synopsis = "GUI framework based on typed-fsm";
      description = "GUI framework based on typed-fsm.\n\nSimilar to the elm architecture, the difference is that typed-gui separates control status and data status.\n\nThere are at least three advantages to doing this.\n\n1. The type of the View part has a clear control state, which can limit the type of Message and avoid sending error messages.\n\n2. The Update part can give full play to the advantages of typed-fsm, and typed-fsm takes over the entire control flow.\n\n3. Extract the common part and simplify the control state.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
          (hsPkgs."typed-fsm" or (errorHandler.buildDepError "typed-fsm"))
        ];
        buildable = true;
      };
      tests = {
        "typed-gui-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-gui" or (errorHandler.buildDepError "typed-gui"))
          ];
          buildable = true;
        };
      };
    };
  }