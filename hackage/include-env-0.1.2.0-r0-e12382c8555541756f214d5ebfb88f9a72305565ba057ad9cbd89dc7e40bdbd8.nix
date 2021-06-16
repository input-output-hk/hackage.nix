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
      identifier = { name = "include-env"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 Marco Zocca, UnfoldML AB";
      maintainer = "oss@unfoldml.com";
      author = "Marco Zocca";
      homepage = "https://github.com/unfoldml/include-env";
      url = "";
      synopsis = "Include the value of an environment variable at compile time";
      description = "Embed secrets (e.g. API keys) inside production artifacts without checking them into the repository.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "include-env" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."include-env" or (errorHandler.buildDepError "include-env"))
            ];
          buildable = true;
          };
        };
      };
    }