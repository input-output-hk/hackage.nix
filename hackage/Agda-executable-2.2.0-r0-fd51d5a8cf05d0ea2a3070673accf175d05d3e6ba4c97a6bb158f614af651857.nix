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
      specVersion = "1.4";
      identifier = { name = "Agda-executable"; version = "2.2.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ulf Norell <ulfn@chalmers.se>";
      author = "Ulf Norell, Catarina Coquand, Makoto Takeyama, Nils Anders Danielsson, Andreas Abel, ...";
      homepage = "http://wiki.portal.chalmers.se/agda/";
      url = "";
      synopsis = "Command-line program for type-checking and compiling Agda programs";
      description = "This package provides a command-line program for type-checking and\ncompiling Agda programs. The program can also generate hyperlinked,\nhighlighted HTML files from Agda sources.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "agda" = {
          depends = [
            (hsPkgs."Agda" or (errorHandler.buildDepError "Agda"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }