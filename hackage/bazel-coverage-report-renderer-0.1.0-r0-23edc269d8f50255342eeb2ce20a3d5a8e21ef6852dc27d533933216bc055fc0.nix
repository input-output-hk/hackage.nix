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
      identifier = {
        name = "bazel-coverage-report-renderer";
        version = "0.1.0";
        };
      license = "Apache-2.0";
      copyright = "2019 Tweag I/O Limited";
      maintainer = "m@tweag.io";
      author = "Tweag I/O Limited";
      homepage = "https://github.com/tweag/rules_haskell#readme";
      url = "";
      synopsis = "HTML Coverage Reports for Rules_Haskell";
      description = "Generate coverage reports from Rules_Haskell Bazel coverage output";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bazel-coverage-report-renderer" = {
          depends = [
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."hxt-xpath" or (errorHandler.buildDepError "hxt-xpath"))
            (hsPkgs."listsafe" or (errorHandler.buildDepError "listsafe"))
            ];
          buildable = true;
          };
        };
      };
    }