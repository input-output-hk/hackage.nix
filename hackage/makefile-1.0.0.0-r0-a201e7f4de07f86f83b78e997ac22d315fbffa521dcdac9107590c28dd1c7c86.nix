{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "makefile"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2016-2017 Nicolas Mattia";
      maintainer = "nicolas@nmattia.com";
      author = "Nicolas Mattia";
      homepage = "http://github.com/nmattia/mask";
      url = "";
      synopsis = "Simple Makefile parser and generator";
      description = "This package provides a few @Attoparser@ parsers and convenience functions\nfor parsing Makefiles.\nThe datatypes used for describing Makefiles are located in 'Data.Makefile'.\nThe parsers and parsing functions are located in 'Data.Makefile.Parse'.\nTo parse a Makefile in the current folder, simply run 'parseMakefile'. To\nparse a Makefile located at @path@, run 'parseAsMakefile' @path@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."makefile" or ((hsPkgs.pkgs-errors).buildDepError "makefile"))
            ];
          buildable = true;
          };
        };
      };
    }