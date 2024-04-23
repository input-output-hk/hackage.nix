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
      identifier = { name = "applicative-splice"; version = "0.0.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "aljee@hyper.cx";
      author = "Takano Akio";
      homepage = "https://github.com/takano-akio/applicative-splice";
      url = "";
      synopsis = "Write applicative programs in direct style (generalizes idiom brackets).";
      description = "This package defines a quasiquoter that lets you write\nyour monadic/applicative programs in direct style, i.e.\nthe style in which you would write it in a\nlanguage with side effects. Unlike actual side effects,\nthis does not affect purity of the langauge, because it's\njust a syntactic sugar around the usual (\\<$>), (\\<*>) and\n(>>=) functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
        ];
        buildable = true;
      };
    };
  }