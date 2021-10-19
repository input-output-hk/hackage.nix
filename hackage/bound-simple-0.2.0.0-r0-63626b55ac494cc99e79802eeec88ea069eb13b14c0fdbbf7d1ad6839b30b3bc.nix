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
      identifier = { name = "bound-simple"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Edward Kmett, 2021 Marco Zocca";
      maintainer = "ocramz";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/bound-simple";
      url = "";
      synopsis = "A lightweight implementation of 'bound'";
      description = "An abstraction for representing bound variables. Most of this code has been extracted from 'bound', with the purpose of providing a mostly self-contained library for implementing embedded languages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bound-simple" or (errorHandler.buildDepError "bound-simple"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }