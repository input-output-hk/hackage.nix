let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }