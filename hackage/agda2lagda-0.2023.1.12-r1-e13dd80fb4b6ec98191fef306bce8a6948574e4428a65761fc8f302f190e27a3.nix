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
      identifier = { name = "agda2lagda"; version = "0.2023.1.12"; };
      license = "LicenseRef-PublicDomain";
      copyright = "Andreas Abel, 2020, 2021, 2022";
      maintainer = "Andreas Abel <andreas.abel@cse.gu.se>";
      author = "Andreas Abel";
      homepage = "https://github.com/andreasabel/agda2lagda";
      url = "";
      synopsis = "Translate .agda files into .lagda.tex files.";
      description = "Simple command line tool to convert plain Agda\nor Haskell files into literate files.  Line comments\nare interpreted as text, the rest as code blocks.";
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
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.goldplate.components.exes.goldplate or (pkgs.pkgsBuildBuild.goldplate or (errorHandler.buildToolDepError "goldplate:goldplate")))
            (hsPkgs.pkgsBuildBuild.agda2lagda.components.exes.agda2lagda or (pkgs.pkgsBuildBuild.agda2lagda or (errorHandler.buildToolDepError "agda2lagda:agda2lagda")))
          ];
          buildable = true;
        };
      };
    };
  }