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
      identifier = { name = "dotenv-micro"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Marco Zocca, UnfoldML";
      maintainer = "Marco Zocca";
      author = "Marco Zocca";
      homepage = "https://github.com/unfoldml/dotenv-micro";
      url = "";
      synopsis = "Tiny dotenv library";
      description = "Loading secrets and confidential configuration values is a software architectural practice. This library enables that with a tiny dependency footprint.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      };
    }