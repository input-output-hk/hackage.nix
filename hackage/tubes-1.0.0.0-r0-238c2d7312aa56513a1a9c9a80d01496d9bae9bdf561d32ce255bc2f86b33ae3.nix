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
      identifier = { name = "tubes"; version = "1.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2015";
      maintainer = "gatlin@niltag.net";
      author = "Gatlin C Johnson";
      homepage = "https://github.com/gatlin/tubes";
      url = "";
      synopsis = "Effectful, iteratee-inspired stream processing based on a\nfree monad.";
      description = "This package provides the @Tube@ monad transformer, allowing any monad\ncomputation to become a stream processing pipeline. A computation of type\n@Tube a b m r@ consumes values of type 'a' and produces values of type\n'b'.\n\n@Tube@s are coroutines which can suspend computation to yield an\nintermediate value or continue execution by requesting an upstream value.\n\nAlso provided are @Pump@s, the comonadic dual to @Tube@s. Examples are\nprovided of how they can be used with @Tube@s but we have almost certainly\nonly scratched the surface.\n\nExamples and more information may be found at\n<https://github.com/gatlin/tubes>.\n\nI seem to have trouble uploading packages where the documentation can be\nbuilt correctly on Hackage. If I have (once again) messed this up, you can\nfind Haddock documentation at <https://niltag.net/tubes>. I apologize for\nany inconvenience!\n\nThis should compile on GHC 7.8, but the problem\nis that previous attempts at setting the versions properly rendered Hackage\nunable to generate documentation. Hopefully I have this fixed but any\nadvice is welcome.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          ];
        };
      };
    }