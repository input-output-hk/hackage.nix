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
      specVersion = "3.0";
      identifier = { name = "herb"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2024-2025 Mirek Kratochvil";
      maintainer = "Mirek Kratochvil <exa.exa@gmail.com>";
      author = "Mirek Kratochvil";
      homepage = "https://gitlab.com/exaexa/herb";
      url = "";
      synopsis = "Accessible format for structured data serialization";
      description = "Serialization of data structures to a Prolog-like Herbrandt-universum-style\nuniversal format, useful for type-tagged things and various intermediate\nrepresentations of program code. The text representation is very simple,\nallowing interoperability with various minimalistic programming systems.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "herb-format" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."herb" or (errorHandler.buildDepError "herb"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."herb" or (errorHandler.buildDepError "herb"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }