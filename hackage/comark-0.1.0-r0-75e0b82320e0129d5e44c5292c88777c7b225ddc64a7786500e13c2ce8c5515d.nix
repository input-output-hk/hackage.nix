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
      identifier = { name = "comark"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2015, 2016, 2017";
      maintainer = "co@zudov.me";
      author = "Konstantin Zudov";
      homepage = "";
      url = "";
      synopsis = "Commonmark processing in pure haskell.";
      description = "See <https://github.com/zudov/haskell-comark#readme README>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."comark-syntax" or (errorHandler.buildDepError "comark-syntax"))
          (hsPkgs."comark-parser" or (errorHandler.buildDepError "comark-parser"))
          (hsPkgs."comark-html" or (errorHandler.buildDepError "comark-html"))
        ];
        buildable = true;
      };
      exes = {
        "comark-hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."comark" or (errorHandler.buildDepError "comark"))
          ];
          buildable = true;
        };
      };
    };
  }