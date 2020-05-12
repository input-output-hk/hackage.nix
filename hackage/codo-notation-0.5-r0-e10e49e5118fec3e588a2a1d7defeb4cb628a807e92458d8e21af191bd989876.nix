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
      specVersion = "1.7";
      identifier = { name = "codo-notation"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dominic Orchard <dom.orchard@gmail.com>";
      author = "Dominic Orchard <dom.orchard@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A notation for comonads, analogous to the do-notation for monads.";
      description = "Requires the @TemplateHaskell@ and @QuasiQuotes@ extensions.\n\nExample 1:\n\n@\n&#x7b;-\\# LANGUAGE TemplateHaskell \\#-&#x7d;\n&#x7b;-\\# LANGUAGE QuasiQuotes \\#-&#x7d;\n\nimport Control.Comonad\nimport Language.Haskell.Codo\n\nfoo :: (Comonad c, Num a) => c a -> a\nfoo = [codo| x => extract x + 1 |]\n@\n\nExample 2:\n\n@\nimport Data.Monoid\ninstance Monoid Double where\n&#x20;&#x20;&#x20;    mempty = 0.0\n&#x20;&#x20;&#x20;    mappend = (+)\n\ndifferentiate f = ((f 0.001) - f 0) / 0.001\n\nminima :: (Double -> Double) -> Bool\nminima = [codo| f => f'  <- differentiate f\n&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20; f'' <- differentiate f'\n&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20; (extract f' &#60; 0.001) && (extract f'' &#62; 0) |]\n@\n\nFurther explanation of the syntax can be found in the following (short) paper: <http://www.cl.cam.ac.uk/~dao29/drafts/codo-notation-orchard-ifl12.pdf> with a numer of examples.\n\nFurther examples can be found here: <https://github.com/dorchard/codo-notation>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }