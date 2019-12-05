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
      identifier = { name = "musicw"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2017- David Ogborn, Jamie Beverley, Luis Navarro del Angel, Spencer Park and others";
      maintainer = "ogbornd@mcmaster.ca";
      author = "David Ogborn, Jamie Beverley, Luis Navarro del Angel, Spencer Park and others";
      homepage = "http://github.com/d0kt0r0/reflex-synth/blob/master/README.md";
      url = "";
      synopsis = "Sound synthesis library, to be used with GHCJS and Web Audio API";
      description = "A library for sound synthesis, currently targeting GHCJS and the Web Audio API. Used in the Inner Ear and Estuary projects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
          (hsPkgs."ghcjs-dom" or (buildDepError "ghcjs-dom"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."ghcjs-prim" or (buildDepError "ghcjs-prim"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."json" or (buildDepError "json"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }