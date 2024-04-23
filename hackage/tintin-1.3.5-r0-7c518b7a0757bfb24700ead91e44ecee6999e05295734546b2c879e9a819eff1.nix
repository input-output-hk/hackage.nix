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
      identifier = { name = "tintin"; version = "1.3.5"; };
      license = "Apache-2.0";
      copyright = "2018 Theam";
      maintainer = "hackers@theam.io";
      author = "The Agile Monkeys";
      homepage = "https://github.com/theam/tintin#readme";
      url = "";
      synopsis = "A softer alternative to Haddock";
      description = "Please see the website <https://theam.github.io/tintin>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
          (hsPkgs."data-has" or (errorHandler.buildDepError "data-has"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."frontmatter" or (errorHandler.buildDepError "frontmatter"))
          (hsPkgs."inliterate" or (errorHandler.buildDepError "inliterate"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."require" or (errorHandler.buildDepError "require"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."universum" or (errorHandler.buildDepError "universum"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      exes = {
        "tintin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."require" or (errorHandler.buildDepError "require"))
            (hsPkgs."tintin" or (errorHandler.buildDepError "tintin"))
            (hsPkgs."universum" or (errorHandler.buildDepError "universum"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tintin-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."require" or (errorHandler.buildDepError "require"))
            (hsPkgs."tintin" or (errorHandler.buildDepError "tintin"))
          ];
          buildable = true;
        };
      };
    };
  }