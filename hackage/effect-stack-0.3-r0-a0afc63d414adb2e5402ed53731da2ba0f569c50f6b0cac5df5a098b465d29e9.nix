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
      specVersion = "2.0";
      identifier = { name = "effect-stack"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "";
      url = "";
      synopsis = "Reducing the pain of transformer stacks with duplicated effects";
      description = "The @mtl@ provides a nice way to write monadic actions\nwhich take advantage of a particular kind of effect (say,\nstatefulness or exception handling) without being forced\nto say exactly which monad is providing that effect.\nHowever, if a transformer stack includes two transformers\nthat provide the given effect, @mtl@ does not provide a\nclean way to disambiguate which one is wanted; the topmost\none is always chosen.\n\nThis package provides tools for disambiguating without\nbeing forced to choose a particular transformer stack. It\nprovides a separate stack for each kind of effect; you may\nthen disambiguate by depth within each stack. For example,\nin a stack with two @StateT@ transformers, one can write\n\n@foo :: MonadStateDepth 0 m a => m a\nfoo = depthState \\@0 get@\n\nfor access to the topmost state effects, or\n\n@bar :: MonadStateDepth 1 m a => m a\nbar = depthState \\@1 get@\n\nfor access to the state from underneath the topmost\n@StateT@, no matter how deep in the stack the two\n@StateT@s are.\n\nSee the readme for more detailed motivation, usage\nexamples, and documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }