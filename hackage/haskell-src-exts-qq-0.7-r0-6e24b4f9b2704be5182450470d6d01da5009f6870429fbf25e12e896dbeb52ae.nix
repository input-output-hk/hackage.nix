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
      identifier = { name = "haskell-src-exts-qq"; version = "0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mathieu Boespflug <mboes@tweag.net>";
      author = "Mathieu Boespflug";
      homepage = "";
      url = "";
      synopsis = "A quasiquoter for haskell-src-exts.";
      description = "Allows one to write programs that generate Haskell programs much\nmore concisely and legibly. This package supports:\n\n* term antiquotations,\n* antiquoting pattern variables in patterns,\n* antiquoting bound names,\n* antiquotations in types.\n\nSome types of splicing use custom syntax due to historical\nreasons. This may change in future releases.";
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
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src-exts-qq" or (errorHandler.buildDepError "haskell-src-exts-qq"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }