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
      specVersion = "1.12";
      identifier = { name = "reader-soup"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2018 EURL Tweag, NovaDiscovery";
      maintainer = "Yves Parès <yves.pares@tweag.io>";
      author = "";
      homepage = "https://github.com/tweag/porcupine#readme";
      url = "";
      synopsis = "Vinyl-based reader-like monad composition";
      description = "Packs together a stack of reader-like monads as one single ReaderT of a\ncomposite state (represented as an array). This permits to represent the\nentire monad stack of an application as one record (in the vinyl sense) of the\nparameters used to run this monad stack, and to add capabilities to that stack\nby just adding a new field to that record. reader-soup is part of the\nporcupine ecosystem. See the README at\n<https://github.com/tweag/porcupine#README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."katip" or (buildDepError "katip"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
          (hsPkgs."vinyl" or (buildDepError "vinyl"))
          ];
        buildable = true;
        };
      };
    }