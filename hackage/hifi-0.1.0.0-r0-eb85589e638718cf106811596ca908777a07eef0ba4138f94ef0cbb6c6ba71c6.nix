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
      identifier = { name = "hifi"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Rickard Andersson";
      maintainer = "gonz@severnatazvezda.com";
      author = "Rickard Andersson";
      homepage = "https://gitlab.com/gonz/hifi";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mustache" or (errorHandler.buildDepError "mustache"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "hifi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hifi" or (errorHandler.buildDepError "hifi"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hifi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hifi" or (errorHandler.buildDepError "hifi"))
            ];
          buildable = true;
          };
        };
      };
    }