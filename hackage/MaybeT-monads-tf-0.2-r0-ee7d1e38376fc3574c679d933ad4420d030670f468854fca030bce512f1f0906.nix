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
      identifier = { name = "MaybeT-monads-tf"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2010 Ben Millwood";
      maintainer = "Ben Millwood <haskell@benmachine.co.uk>";
      author = "Ben Millwood <haskell@benmachine.co.uk>";
      homepage = "";
      url = "";
      synopsis = "MaybeT monad transformer compatible with monads-tf instead of mtl";
      description = "Support for computations with failures. This is a fork of the MaybeT\npackage by Eric Kidd, but compatible with the type-family based monad\nclasses of the monads-tf package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }