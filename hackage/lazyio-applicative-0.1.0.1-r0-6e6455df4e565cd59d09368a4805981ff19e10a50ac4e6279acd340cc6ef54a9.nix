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
      specVersion = "3.0";
      identifier = { name = "lazyio-applicative"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "profunctorial@protonmail.com";
      author = "Profunctorial";
      homepage = "";
      url = "";
      synopsis = "LazyIO applicative for asymptotic performance ";
      description = "Producing data structures lazily is builtin pure haskell, but the IO monad is strict meaning Functor and Applicative have wildy different asymptotics (for IO). Using lazy IO allows effectful mappings WITH lazy streaming. LazyIO actions are expected to be commutative up to correctness.  ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }