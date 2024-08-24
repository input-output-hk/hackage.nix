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
      identifier = {
        name = "typed-session-state-algorithm";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "shangdizhixia1993@163.com";
      author = "sdzx-1";
      homepage = "";
      url = "";
      synopsis = "Automatically generate status for typed-session.";
      description = "Consider the communication process as a state machine, and this lib will generate the required states.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
        ];
        buildable = true;
      };
      tests = {
        "typed-session-state-algorithm-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-session-state-algorithm" or (errorHandler.buildDepError "typed-session-state-algorithm"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
          ];
          buildable = true;
        };
      };
    };
  }