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
      identifier = { name = "hlex"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2023 Sebastian Tee";
      maintainer = "Sebastian Tee";
      author = "Sebastian Tee";
      homepage = "https://github.com/SebTee/hlex#readme";
      url = "";
      synopsis = "Simple Lexer Creation";
      description = "This package provides the tools to create a simple lexer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          ];
        buildable = true;
        };
      tests = {
        "Hlex-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hlex" or (errorHandler.buildDepError "hlex"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            ];
          buildable = true;
          };
        };
      };
    }