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
      identifier = { name = "ordinal"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Willem Van Onsem";
      maintainer = "hapytexteu+gh@gmail.com";
      author = "Willem Van Onsem";
      homepage = "https://github.com/hapytex/ordinal#readme";
      url = "";
      synopsis = "Convert numbers to words in different languages.";
      description = "A package based on Python's num2words package that converts numbers\nto words in different languages.\nIt contains functions and data types to create a numbers-to-words\nalgorithm for different languages, and converts numbers both to\ncardinal numbers and ordinal numbers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "cardinal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ordinal" or (errorHandler.buildDepError "ordinal"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }