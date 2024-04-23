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
      identifier = { name = "include-env"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 Marco Zocca, UnfoldML AB";
      maintainer = "oss@unfoldml.com";
      author = "Marco Zocca";
      homepage = "https://github.com/unfoldml/include-env";
      url = "";
      synopsis = "Include the value of an environment variable at compile time";
      description = "Embed secrets (e.g. API keys) inside production artifacts at compile time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
        ];
        buildable = true;
      };
    };
  }