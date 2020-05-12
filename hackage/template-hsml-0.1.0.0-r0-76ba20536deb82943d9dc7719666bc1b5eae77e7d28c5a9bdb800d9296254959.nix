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
      specVersion = "1.8";
      identifier = { name = "template-hsml"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Petr Pilař 2012 ";
      maintainer = "maintainer+the.palmik@gmail.com";
      author = "Petr Pilař";
      homepage = "";
      url = "";
      synopsis = "Haskell's Simple Markup Language";
      description = "HSML syntax is very similar to that of XML, but there are less rules.\nThe main advantage over plain HTML is that it allows you to embed Haskell declarations\nand expression directly into your template.\nThe main dvantage over something like Blaze is thatit saves\nyou the overhead of using Blaze's combinators. It's also relatively easy to port your existing\nplain HTML templates into HSML (most of the times, cut & paste will suffice).\nFor examples, see the examples directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }