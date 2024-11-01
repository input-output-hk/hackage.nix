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
      identifier = { name = "hifi"; version = "0.1.4.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Rickard Andersson";
      maintainer = "gonz@severnatazvezda.com";
      author = "Rickard Andersson";
      homepage = "https://gitlab.com/gonz/hifi";
      url = "";
      synopsis = "WiFi connection script generator";
      description = "A CLI tool generating scripts for connecting to WiFi, circumventing big WiFi management tools.";
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
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
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