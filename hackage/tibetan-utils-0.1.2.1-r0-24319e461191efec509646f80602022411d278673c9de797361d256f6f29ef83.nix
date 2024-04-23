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
      identifier = { name = "tibetan-utils"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Parse and display tibetan numerals";
      description = "This package provides a [megaparsec](http://hackage.haskell.org/package/megaparsec) parser for Tibetan numerals, as well as efficient means to display numbers using Tibetan numerals.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
        ];
        buildable = true;
      };
      tests = {
        "tibetan-utils-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tibetan-utils" or (errorHandler.buildDepError "tibetan-utils"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-megaparsec" or (errorHandler.buildDepError "hspec-megaparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          ];
          buildable = true;
        };
      };
    };
  }