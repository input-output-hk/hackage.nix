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
    flags = { ci = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "pollock"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "(c) 2023-2025 Trevis Elser";
      maintainer = "trevis@flipstone.com";
      author = "Trevis Elser";
      homepage = "";
      url = "";
      synopsis = "Functionality to help examine Haddock information of a module.";
      description = "Pollock is functionality to examine various bits of information about documentation as exposed from a Haskell module. This is designed to be used as part of a GHC plugin.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }