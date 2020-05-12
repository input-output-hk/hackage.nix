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
      identifier = { name = "th-format"; version = "0.1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 Moritz Clasmeier";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Clasmeier";
      homepage = "https://github.com/mtesseract/th-format#readme";
      url = "";
      synopsis = "Template Haskell based support for format strings";
      description = "This package implements a Template Haskell quasi quoter for format strings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Earley" or (errorHandler.buildDepError "Earley"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "th-format-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-format" or (errorHandler.buildDepError "th-format"))
            ];
          buildable = true;
          };
        };
      };
    }