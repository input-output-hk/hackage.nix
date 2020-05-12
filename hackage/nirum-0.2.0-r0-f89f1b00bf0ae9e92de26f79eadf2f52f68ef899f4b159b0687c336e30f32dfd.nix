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
      identifier = { name = "nirum"; version = "0.2.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2016 Nirum team";
      maintainer = "Nirum team";
      author = "Nirum team";
      homepage = "https://github.com/spoqa/nirum";
      url = "";
      synopsis = "IDL compiler and RPC/distributed object framework for\nmicroservices";
      description = "Nirum is an IDL compiler and RPC/distributed object\nframework for microservices, built on top of the modern\nWeb server technologies such as RESTful HTTP and JSON.\n\nYou can find how its IDL looks like from source codes in\nthe examples/ directory.\n\nSee also README.md for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."interpolatedstring-perl6" or (errorHandler.buildDepError "interpolatedstring-perl6"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."semver" or (errorHandler.buildDepError "semver"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "nirum" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nirum" or (errorHandler.buildDepError "nirum"))
            ];
          buildable = true;
          };
        "nirum-static" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nirum" or (errorHandler.buildDepError "nirum"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-meta" or (errorHandler.buildDepError "hspec-meta"))
            (hsPkgs."interpolatedstring-perl6" or (errorHandler.buildDepError "interpolatedstring-perl6"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."nirum" or (errorHandler.buildDepError "nirum"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."semver" or (errorHandler.buildDepError "semver"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            ];
          buildable = true;
          };
        };
      };
    }