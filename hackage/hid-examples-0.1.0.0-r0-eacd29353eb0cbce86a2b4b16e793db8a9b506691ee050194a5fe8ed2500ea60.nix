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
      identifier = { name = "hid-examples"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Vitaly Bragilevsky 2018";
      maintainer = "Vitaly Bragilevsky <vit.bragilevsky@gmail.com>";
      author = "Vitaly Bragilevsky";
      homepage = "https://github.com/bravit/hid-examples/";
      url = "";
      synopsis = "Examples to accompany the book \"Haskell in Depth\"";
      description = "This package provides source code examples which accompany the book\n\"Haskell in Depth\" by Vitaly Bragilevsky (Manning Publications 2019).\nYou may want to get this package via @cabal get hid-examples@\nand explore its content.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "locator" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        "vocab1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "vocab2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "vocab3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        "showexpr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            ];
          buildable = true;
          };
        "stockquotes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."fmt" or (errorHandler.buildDepError "fmt"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            ];
          buildable = true;
          };
        };
      };
    }