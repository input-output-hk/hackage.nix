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
      identifier = { name = "proxy-kindness"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "https://github.com/jberryman/proxy-kindness";
      url = "";
      synopsis = "A library for kind-polymorphic manipulation and inspection of Proxy values";
      description = "It can be useful (especially with @PolyKinds@) to get the\n\\\"bare\\\" type (e.g. @Either@) of some parameterized type\n(e.g. @Either Char Int@). This library provides closed\nclasses that can strip and reapply type arguments, as well\nas useful utility functions. Here are some examples:\n\nForce @Left 1@ to be of type @Either Float a@ using a\npartially-applied 'Proxy'.\n\n>>> let t = (Left 1) `asApplied` (Proxy :: Proxy (Either Float))\n>>> :t t\nt :: Either Float a\n\nDo the same, but illustrating type application with @ap@\n\n>>> let t0 = (Left 1) `asApplied` ((Proxy :: Proxy Either) `ap` (Proxy :: Proxy Float))\n>>> :t t0\nt0 :: Either Float a\n\nForce polymorphic @undefined@ to some polymorphic @Either@\ntype, the base type of @t@ defined above.\n\n>>> let u = undefined `asApplied` (unappliedOf t)\n>>> :t u\nu :: Either a a1";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          ];
        };
      };
    }