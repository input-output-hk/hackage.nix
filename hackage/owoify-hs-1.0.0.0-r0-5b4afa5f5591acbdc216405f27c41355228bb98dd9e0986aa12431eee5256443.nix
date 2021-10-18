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
      specVersion = "1.12";
      identifier = { name = "owoify-hs"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2021 Chehui Chou";
      maintainer = "tetsuki.syu1315@gmail.com";
      author = "Chehui Chou";
      homepage = "https://github.com/deadshot465/owoify-hs#readme";
      url = "";
      synopsis = "Turn any English text into nonsensical babyspeaks.";
      description = "Please see the README on GitHub at <https://github.com/deadshot465/owoify-hs#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."regex" or (errorHandler.buildDepError "regex"))
          (hsPkgs."regex-with-pcre" or (errorHandler.buildDepError "regex-with-pcre"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "owoify-hs-exe" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."owoify-hs" or (errorHandler.buildDepError "owoify-hs"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."regex" or (errorHandler.buildDepError "regex"))
            (hsPkgs."regex-with-pcre" or (errorHandler.buildDepError "regex-with-pcre"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "owoify-hs-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."owoify-hs" or (errorHandler.buildDepError "owoify-hs"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."regex" or (errorHandler.buildDepError "regex"))
            (hsPkgs."regex-with-pcre" or (errorHandler.buildDepError "regex-with-pcre"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }