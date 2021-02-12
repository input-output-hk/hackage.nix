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
      specVersion = "1.8";
      identifier = { name = "language-fortran"; version = "0.2.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dagitj@gmail.com, dom.orchard@gmail.com";
      author = "Jason Dagit, Dominic Orchard, Oleg Oshmyan";
      homepage = "";
      url = "";
      synopsis = "Fortran lexer and parser, language support, and extensions. ";
      description = "Lexer and parser for Fortran roughly supporting standards from FORTRAN 77 to Fortran 2003 (but with some patches and rough edges). Also includes language extension support for units-of-measure typing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          ];
        buildable = true;
        };
      };
    }