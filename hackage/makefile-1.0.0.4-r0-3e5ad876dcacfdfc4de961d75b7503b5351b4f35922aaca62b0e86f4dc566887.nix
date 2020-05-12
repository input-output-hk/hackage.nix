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
      identifier = { name = "makefile"; version = "1.0.0.4"; };
      license = "MIT";
      copyright = "2016-2017 Nicolas Mattia";
      maintainer = "nicolas@nmattia.com";
      author = "Nicolas Mattia";
      homepage = "http://github.com/nmattia/mask";
      url = "";
      synopsis = "Simple Makefile parser and generator";
      description = "This package provides a few @Attoparser@ parsers and convenience functions\nfor parsing and generating Makefiles.\nThe datatypes used for describing Makefiles are located in 'Data.Makefile'.\nThe parsers and parsing functions are located in 'Data.Makefile.Parse'.\nThe generating and encoding functions are located in 'Data.Makefile.Render'.\nTo parse a Makefile in the current folder, simply run 'parseMakefile'. To\nparse a Makefile located at @path@, run 'parseAsMakefile' @path@. To parse a\nMakefile from a Text @txt@, run 'parseMakefileContents txt`.\nTo encode a @Makefile@, run 'encodeMakefile'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."makefile" or (errorHandler.buildDepError "makefile"))
            ];
          buildable = true;
          };
        };
      };
    }