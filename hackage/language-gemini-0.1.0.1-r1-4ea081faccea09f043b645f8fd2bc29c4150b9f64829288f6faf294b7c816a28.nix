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
      specVersion = "2.2";
      identifier = { name = "language-gemini"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2020 Francesco Gazzetta and contributors";
      maintainer = "Francesco Gazzetta <fgaz@fgaz.me>";
      author = "Francesco Gazzetta";
      homepage = "https://sr.ht/~fgaz/haskell-gemini/";
      url = "";
      synopsis = "Datatypes and parsing/printing functions to represent the Gemini markup language";
      description = "This package contains the 'GeminiDocument' datatype, representing a Gemini\n(<https://gemini.circumlunar.space>) document, together with functions for\nparsing and printing Gemini documents to/from 'Text' data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "language" = {
          depends = [
            (hsPkgs."language-gemini" or (errorHandler.buildDepError "language-gemini"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }