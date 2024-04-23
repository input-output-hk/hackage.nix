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
      identifier = { name = "transformers-supply"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2013 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "";
      url = "";
      synopsis = "Supply applicative, monad, applicative transformer and\nmonad transformer.";
      description = "The @Supply@ monad represents a computation that consumes values from a\nprovided supply.\n\nThis package comes with two separate implementations,\n@Control.Applicative.Supply@ and @Control.Monad.Trans.Supply@. The former\nprovides an applicative and applicative transformer, the latter a monad and\nmonad transformer.\n\nThe reason for providing two separate implementations is that the\n@Applicative@ instance of @Control.Monad.Trans.Supply.SupplyT@ incurs a\n@Monad@ constraint on the wrapped type, meaning it's not possible to\n(usefully) wrap a type that only has an @Applicative@ instance.\n\nThe implementation of @Control.Applicative.Supply.SupplyT@ has an\n@Applicative@ instance for wrapped types that are only @Applicative@, but\nthis implementation cannot be made an instance of @Monad@, meaning it is\nless powerful than the version from @Control.Monad.Trans.Supply@.\n\nIn general, use @Control.Monad.Trans.Supply@ unless you're wrapping a type\nthat has no @Monad@ instance, in which case you can fall back to\n@Control.Applicative.Supply@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }