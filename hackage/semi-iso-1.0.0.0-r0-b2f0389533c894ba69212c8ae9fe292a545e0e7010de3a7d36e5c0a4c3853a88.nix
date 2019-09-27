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
      identifier = { name = "semi-iso"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Weakened partial isomorphisms, reversible computations.";
      description = "Semi-isomorphisms are partial isomorphisms with weakened iso laws. They are a basic\nbuilding block of reversible computations. And they work with Iso and Prism from @lens@!\n\nThe module \"Control.Lens.SemiIso\" defines semi-isomorphisms and provides some\nbasic semi-isos and combinators. A @SemiIso' a b@ can be applied in both directions\nto get a @a -> Either String b@ and @b -> Either String a@. SemiIsos can be composed\nwith Isos and Prisms (to get another SemiIso). Isos and Prisms can be directly\nused as SemiIsos.\n\nSemi-isomorphisms obey weaker laws then isomorphisms. We require only\n\n> apply f >=> unapply f >=> apply f = apply f\n> unapply f >=> apply f >=> unapply f = unapply f\n\ninstead of\n\n> apply f >=> unapply f = f\n> unapply f >=> apply f = f\n\nModules \"Control.SIArrow\" and \"Control.Category.Structures\" define an @Arrow@-like class\nhierarchy. Unfortunately \"Control.Arrow\" cannot be used, as it is too restrictive (the\ndreaded @arr@).\nSIArrow abstracts categories of reversible computations (with reversible side effects). In\nthe case of parsing and pretty-printing using the \"syntax\" library if we have an arrow\n@SIArrow cat => cat a b@ then we can:\n\n* Evaluate it from left to right, turning a value of type @a@ into a value of type @b@,\nwith the side effect of consuming a sequence. (Parsing)\n\n* Evaluate it from right to left, turning a value of type @b@ into a value of type @a@,\nwith the side effect of generating a sequence. (Pretty-printing)\n\nIn the particular case of parsing/pretty-printing the type @a@ will be usually @()@, e.g.\nwe just produce a value during parsing and just consume a value during pretty-printing.\nTo support this style we define a functor and applicative structure on @cat () b@, for example\n'/*/' (equivalent of '<*>') has type @(\\/*\\/) :: SIArrow cat => cat () a -> cat () b -> cat () (a, b)@.\n\nWhen more power then applicative is needed - for example when the syntax depends on the\nparsed value - we turn back to arrow composition.\n\nModule \"Control.Category.Reader\" defines a Reader category transformer. It is like a monad\ntransformer, but for categories. The next version will include some more transformers and\nmtl-style classes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."tuple-morph" or (buildDepError "tuple-morph"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          ];
        buildable = true;
        };
      };
    }