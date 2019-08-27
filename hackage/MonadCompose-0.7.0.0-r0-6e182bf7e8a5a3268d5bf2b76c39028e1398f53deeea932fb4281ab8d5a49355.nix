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
      specVersion = "1.8";
      identifier = { name = "MonadCompose"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "info@alkalisoftware.net";
      author = "James Candy";
      homepage = "http://alkalisoftware.net";
      url = "";
      synopsis = "Methods for composing monads.";
      description = "Methods for composing monads.\n\nThe IO monad transformer solves the problem of combining two IO-performing monads, so that neither one needs to provide a MonadIO interface and both can be transformed separately.\n\nMost known monads have a distributive law. The Distributive module implements distributivity for monad transformers.\n\nA monad transformer can transform another monad, but if you have two monads both lacking a transformer, there is little you can do in general. However, you can compose them in a coproduct construction. The PlusMonad module implements a similar plan, but differs from coproducts in that it doesn't compress together contiguous uses of a monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."monad-products" or (buildDepError "monad-products"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."MaybeT" or (buildDepError "MaybeT"))
          ];
        };
      };
    }