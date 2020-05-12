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
      identifier = { name = "ini-qq"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "kwangyul.seo@gmail.com";
      author = "Kwang Yul Seo";
      homepage = "https://github.com/kseo/ini-qq#readme";
      url = "";
      synopsis = "Quasiquoter for INI";
      description = "This library provides quasiquoters for the ini package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ini" or (errorHandler.buildDepError "ini"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "ini-qq-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."ini" or (errorHandler.buildDepError "ini"))
            (hsPkgs."ini-qq" or (errorHandler.buildDepError "ini-qq"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }