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
      identifier = { name = "applicative-quoters"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow";
      maintainer = "Ben Millwood <haskell@benmachine.co.uk>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "Quasiquoters for idiom brackets and an applicative do-notation";
      description = "Quasiquoters taken from Matt Morrow's haskell-src-meta to implement\nConor McBride's idiom brackets, and a do-notation that only requires\nApplicative (and is correspondingly less powerful).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }