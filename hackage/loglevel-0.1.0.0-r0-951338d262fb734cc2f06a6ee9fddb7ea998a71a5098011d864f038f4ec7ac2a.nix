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
      identifier = { name = "loglevel"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2018 Lars Kuhtz <lakuhtz@gmail.com>";
      maintainer = "lakuhtz@gmail.com";
      author = "Lars Kuhtz";
      homepage = "https://github.com/larskuhtz/loglevel";
      url = "";
      synopsis = "Log Level Datatype";
      description = "The package provides a LogLevel type for defining logging callbacks without\ndepending on a particular logging framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."loglevel" or (errorHandler.buildDepError "loglevel"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }