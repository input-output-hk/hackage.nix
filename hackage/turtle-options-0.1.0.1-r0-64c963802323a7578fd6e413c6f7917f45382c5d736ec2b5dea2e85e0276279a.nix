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
      identifier = { name = "turtle-options"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Elie Genard";
      maintainer = "elaye@users.noreply.github.com";
      author = "Elie Genard";
      homepage = "http://github.com/githubuser/turtle-options#readme";
      url = "";
      synopsis = "Collection of command line options and parsers for these options";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."optional-args" or (errorHandler.buildDepError "optional-args"))
          (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
        ];
        buildable = true;
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."turtle-options" or (errorHandler.buildDepError "turtle-options"))
          ];
          buildable = true;
        };
      };
      tests = {
        "turtle-options-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."turtle-options" or (errorHandler.buildDepError "turtle-options"))
          ];
          buildable = true;
        };
      };
    };
  }