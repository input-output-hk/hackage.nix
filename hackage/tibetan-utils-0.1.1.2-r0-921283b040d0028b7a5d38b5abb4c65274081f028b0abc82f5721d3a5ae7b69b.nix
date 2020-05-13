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
      identifier = { name = "tibetan-utils"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/tibetan-utils#readme";
      url = "";
      synopsis = "Parse and display tibetan numerals";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
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