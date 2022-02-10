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
      identifier = { name = "haskell-src-exts-qq"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mathieu Boespflug <mboes@tweag.net>";
      author = "Mathieu Boespflug";
      homepage = "";
      url = "";
      synopsis = "A quasiquoter for haskell-src-exts.";
      description = "Allows one to write programs that generate Haskell programs much\nmore concisely and legibly. This package supports:\n\n* Antiquotations, denoted by stealing the splice syntax of\nTemplate Haskell, for example @[hs| $x ++ $(Hs.strE \"bar\") |]@.\nSplices may not nested.\n\n* Antiquoting pattern variables in patterns, using double\nparentheses. For instance:\n\n> let x = Hs.name \"n\" in [hs| \\ ((x)) -> $(Hs.Var (Hs.UnQual x)) + 1 |]\n\n* Antiquoting bound names. Names that are antiquoted appear\nsurrounded by double underscores. For instance:\n\n> let f = \"incr\"\n>     fE = Hs.Var $ Hs.UnQual $ Hs.name f\n> in [hs| let __f__ x = x + 1 in $fE 10 |]\n\nWe need three different syntaxes for antiquotations, because we do\nnot extend the haskell-src-exts parser in any way and the Template\nHaskell splicing syntax is only available in expression contexts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          ];
        buildable = true;
        };
      };
    }