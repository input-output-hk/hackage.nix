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
      identifier = { name = "word-note-sox"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "https://hackage.haskell.org/package/word-note-sox";
      url = "";
      synopsis = "SoX for algorithmic composition with groups of notes liken to words";
      description = "A basic SoX functionality for the new project related to music and algorithmic composition. Is rewritten from algorithmic-composition-basic functionality and some other ones.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."end-of-exe" or (errorHandler.buildDepError "end-of-exe"))
          (hsPkgs."monoid-insertleft" or (errorHandler.buildDepError "monoid-insertleft"))
        ];
        buildable = true;
      };
    };
  }