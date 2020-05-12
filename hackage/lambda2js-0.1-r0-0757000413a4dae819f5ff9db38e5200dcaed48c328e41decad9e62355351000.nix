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
      specVersion = "1.4";
      identifier = { name = "lambda2js"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Matej Kollar <208115@mail.muni.cz>";
      author = "Matej Kollar <208115@mail.muni.cz>";
      homepage = "https://patch-tag.com/r/mkollar/lambda2js/";
      url = "";
      synopsis = "Untyped Lambda calculus to JavaScript compiler";
      description = "Simple though savage untyped Lambda calculus to JavaScript compiler.\nI hope you will have same fun playing with it as I had writing it.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambda2js" = {
          depends = [
            (hsPkgs."haskell2010" or (errorHandler.buildDepError "haskell2010"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }