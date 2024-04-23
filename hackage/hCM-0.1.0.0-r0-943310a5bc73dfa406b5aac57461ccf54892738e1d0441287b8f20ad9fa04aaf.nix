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
      identifier = { name = "hCM"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Marek Suchánek";
      maintainer = "suchama4@fit.cvut.cz";
      author = "Marek Suchánek <suchama4@fit.cvut.cz>";
      homepage = "https://github.com/MarekSuchanek/hCM";
      url = "";
      synopsis = "Conceptual modelling support for Haskell";
      description = "hCM is the result of finding a suitable way how to support conceptual\nmodelling within Haskell programming language in the most simple but smart manner.\nhCM should allow you to build conceptual model with Haskell freely without any\nrestrictions about selected representation of entities, relationships and model\nitself.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        buildable = true;
      };
      exes = {
        "hCM" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hCM" or (errorHandler.buildDepError "hCM"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hCM-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hCM" or (errorHandler.buildDepError "hCM"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
          buildable = true;
        };
      };
    };
  }