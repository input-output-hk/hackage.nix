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
    flags = { documentation = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "android-lint-summary"; version = "0.2.1"; };
      license = "Apache-2.0";
      copyright = "2015, Pascal Hartig";
      maintainer = "phartig@twitter.com";
      author = "Pascal Hartig";
      homepage = "https://github.com/passy/android-lint-summary";
      url = "";
      synopsis = "A pretty printer for Android Lint errors";
      description = "An easily digestible overview of errors and warnings from Android Lint.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
          (hsPkgs."stringable" or (errorHandler.buildDepError "stringable"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"));
        buildable = true;
        };
      exes = {
        "android-lint-summary" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."android-lint-summary" or (errorHandler.buildDepError "android-lint-summary"))
            (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
            (hsPkgs."stringable" or (errorHandler.buildDepError "stringable"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hspec-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."android-lint-summary" or (errorHandler.buildDepError "android-lint-summary"))
            (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."stringable" or (errorHandler.buildDepError "stringable"))
            ];
          buildable = true;
          };
        };
      };
    }