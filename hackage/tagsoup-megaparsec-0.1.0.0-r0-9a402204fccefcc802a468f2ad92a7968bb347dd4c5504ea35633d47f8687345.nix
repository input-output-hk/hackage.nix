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
      identifier = { name = "tagsoup-megaparsec"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "kwangyul.seo@gmail.com";
      author = "Kwang Yul Seo";
      homepage = "https://github.com/kseo/tagsoup-megaparsec#readme";
      url = "";
      synopsis = "A Tag token parser and Tag specific parsing combinators";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          ];
        buildable = true;
        };
      tests = {
        "tagsoup-megaparsec-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."tagsoup-megaparsec" or (errorHandler.buildDepError "tagsoup-megaparsec"))
            ];
          buildable = true;
          };
        };
      };
    }