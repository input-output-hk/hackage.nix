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
    flags = { testing = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "template-hsml"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Petr Pilař 2012 ";
      maintainer = "maintainer+the.palmik@gmail.com";
      author = "Petr Pilař";
      homepage = "";
      url = "";
      synopsis = "Haskell's Simple Markup Language";
      description = "HSML syntax is very similar to that of XML, but there are less rules.\nThe main advantage over plain XML or HTML is that it allows you to embed Haskell declarations\nand expression directly into your template.\nThe main advantage over something like Blaze is that it saves\nyou the overhead of using Blaze's combinators. It's also relatively easy to port your existing\nplain HTML templates into HSML (most of the times, cut & paste will suffice).\nFor examples, see the examples directory.";
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
      tests = {
        "template-hsml-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-hsml" or (errorHandler.buildDepError "template-hsml"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }