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
      identifier = { name = "simple-text-format"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Justus Adam";
      maintainer = "dev@justus.science";
      author = "Justus Adam";
      homepage = "https://github.com/JustusAdam/simple-text-format#readme";
      url = "";
      synopsis = "Simple text based format strings with named identifiers.";
      description = "A simple library for format strings based on text and attoparsec. See the readme for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
        ];
        buildable = true;
      };
      tests = {
        "simple-text-format-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."simple-text-format" or (errorHandler.buildDepError "simple-text-format"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
          ];
          buildable = true;
        };
      };
    };
  }