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
      identifier = { name = "agda2lagda"; version = "0.2020.11.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "Andreas Abel, 2020";
      maintainer = "Andreas Abel <andreas.abel@cse.gu.se>";
      author = "Andreas Abel";
      homepage = "https://github.com/andreasabel/agda2lagda";
      url = "";
      synopsis = "Translate .agda files into .lagda.tex files.";
      description = "Simple command line tool to convert plain Agda\nor Haskell\nfiles into literate files.  Single line comments\nare interpreted as text, the rest as code blocks.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "agda2lagda" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
    };
  }