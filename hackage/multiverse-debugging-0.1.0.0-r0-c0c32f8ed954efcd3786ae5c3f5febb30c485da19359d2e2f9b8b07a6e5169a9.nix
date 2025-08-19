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
      specVersion = "2.2";
      identifier = { name = "multiverse-debugging"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Damian Frolich";
      maintainer = "leegbestand@gmail.com";
      author = "Damian Frolich";
      homepage = "";
      url = "";
      synopsis = "";
      description = "See GitLab";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "multiverse-debugging-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."multiverse-debugging" or (errorHandler.buildDepError "multiverse-debugging"))
          ];
          buildable = true;
        };
      };
      tests = {
        "multiverse-debugging-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."multiverse-debugging" or (errorHandler.buildDepError "multiverse-debugging"))
          ];
          buildable = true;
        };
      };
    };
  }