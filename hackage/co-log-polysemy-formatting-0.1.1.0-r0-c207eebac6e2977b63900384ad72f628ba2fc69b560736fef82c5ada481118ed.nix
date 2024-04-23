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
      identifier = {
        name = "co-log-polysemy-formatting";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2020 Alex Chapman";
      maintainer = "alex@farfromthere.net";
      author = "Alex Chapman";
      homepage = "https://github.com/AJChapman/co-log-polysemy-formatting#readme";
      url = "";
      synopsis = "A Polysemy logging effect for high quality (unstructured) logs.";
      description = "co-log-polysemy-formatting builds on the co-log-polysemy package, adding terminal colours, log severity, timestamps, callers, thread ids, and a flexible log format with good defaults. It also allows you to use the formatting library for formatting your log messages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."co-log" or (errorHandler.buildDepError "co-log"))
          (hsPkgs."co-log-core" or (errorHandler.buildDepError "co-log-core"))
          (hsPkgs."co-log-polysemy" or (errorHandler.buildDepError "co-log-polysemy"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."co-log" or (errorHandler.buildDepError "co-log"))
            (hsPkgs."co-log-core" or (errorHandler.buildDepError "co-log-core"))
            (hsPkgs."co-log-polysemy" or (errorHandler.buildDepError "co-log-polysemy"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."co-log-polysemy-formatting" or (errorHandler.buildDepError "co-log-polysemy-formatting"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          ];
          buildable = true;
        };
      };
    };
  }