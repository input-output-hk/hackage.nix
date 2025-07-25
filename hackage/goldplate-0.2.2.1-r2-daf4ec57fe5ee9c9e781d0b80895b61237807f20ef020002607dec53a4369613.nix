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
      specVersion = "1.18";
      identifier = { name = "goldplate"; version = "0.2.2.1"; };
      license = "Apache-2.0";
      copyright = "2019-2021 Fugue, Inc";
      maintainer = "Jasper Van der Jeugt, Andreas Abel";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "https://github.com/jaspervdj/goldplate";
      url = "";
      synopsis = "A lightweight golden test runner";
      description = "Language-agnostic golden test runner for command-line applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      exes = {
        "goldplate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."goldplate" or (errorHandler.buildDepError "goldplate"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."goldplate" or (errorHandler.buildDepError "goldplate"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.goldplate.components.exes.goldplate or (pkgs.pkgsBuildBuild.goldplate or (errorHandler.buildToolDepError "goldplate:goldplate")))
          ];
          buildable = true;
        };
      };
    };
  }