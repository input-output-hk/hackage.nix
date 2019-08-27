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
      identifier = { name = "ClassLaws"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "patrikj@chalmers.se";
      author = "Patrik Jansson and Johan Jeuring";
      homepage = "http://wiki.portal.chalmers.se/cse/pmwiki.php/FP/ClassLaws";
      url = "";
      synopsis = "Stating and checking laws for type class methods";
      description = "The specification of a class in Haskell often starts with\nstating, in text, the laws that should be satisfied by methods\ndefined in instances of the class, followed by the type of the\nmethods of the class. The ClassLaws library is a framework that\nsupports testing such class laws using QuickCheck.  Our framework is\na light-weight class law testing framework, which requires a limited\namount of work per class law, and per datatype for which the class\nlaw is tested.  We also show how to test class laws with\npartially-defined values.  Using partially-defined values, we show\nthat the standard lazy and strict implementations of the state monad\ndo not satisfy the expected laws. More information can be found at\n<http://wiki.portal.chalmers.se/cse/pmwiki.php/FP/ClassLaws>.  Built\nwith ghc-7.4.2 and ghc-7.6.1. (Fails to build with ghc-7.2.2 due to\nhttp://hackage.haskell.org/trac/ghc/ticket/5745. Could be worked\naround.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."ChasingBottoms" or (buildDepError "ChasingBottoms"))
          ];
        };
      };
    }