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
      specVersion = "1.8.0.2";
      identifier = { name = "pipes"; version = "3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2012, 2013 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Compositional pipelines";
      description = "\\\"Coroutines done right\\\".  This library generalizes iteratees and coroutines\nsimply and elegantly.\n\nAdvantages over traditional iteratee\\/coroutine implementations:\n\n* /Concise API/: Use three simple commands: ('>->'), 'request', and 'respond'\n\n* /Bidirectionality/: Implement duplex channels\n\n* /Blazing fast/: Implementation tuned for speed\n\n* /Elegant semantics/: Use practical category theory\n\n* /Extension Framework/: Mix and match extensions and create your own\n\n* /ListT/: Correct implementation of ListT that interconverts with pipes\n\n* /Lightweight Dependency/: @pipes@ depends only on @transformers@ and\ncompiles rapidly\n\n* /Extensive Documentation/: Second to none!\n\nImport \"Control.Proxy\" to use the library.\n\nRead \"Control.Proxy.Tutorial\" for a really extensive tutorial.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }