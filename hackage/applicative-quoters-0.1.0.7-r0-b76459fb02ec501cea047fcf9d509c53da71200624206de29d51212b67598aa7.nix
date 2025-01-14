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
      specVersion = "1.6";
      identifier = { name = "applicative-quoters"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow";
      maintainer = "";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "Quasiquoters for idiom brackets and an applicative do-notation";
      description = "Quasiquoters taken from Matt Morrow's haskell-src-meta to implement\nConor McBride's idiom brackets, and a do-notation that only requires\nApplicative (and is correspondingly less powerful).\n\napplicative-quoters currently has no maintainer: if it is broken and\nyou want it to be fixed, then fix it!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."notcpp" or (errorHandler.buildDepError "notcpp"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }