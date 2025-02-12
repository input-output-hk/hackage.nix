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
    flags = { pedantic = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "parsable"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (C) 2022-2025 Gentoo Authors";
      maintainer = "hololeap@protonmail.com";
      author = "Gentoo Authors";
      homepage = "https://github.com/gentoo-haskell/cabal-portage/tree/main/parsable";
      url = "";
      synopsis = "Parsable and Printable classes";
      description = "Provides the Parsable and Printable classes, which form a round-trip\nequivalence between a data type and a String. Useful for types that\nare generated directly from a String and need their internal\nrepresentation to be converted back to a String.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }