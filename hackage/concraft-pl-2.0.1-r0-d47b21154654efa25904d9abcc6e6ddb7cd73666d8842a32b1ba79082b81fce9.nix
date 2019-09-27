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
      identifier = { name = "concraft-pl"; version = "2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012-2018 Jakub Waszczuk, IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "http://zil.ipipan.waw.pl/Concraft";
      url = "";
      synopsis = "Morphological tagger for Polish";
      description = "A morphological tagger for Polish based on the concraft library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."concraft" or (buildDepError "concraft"))
          (hsPkgs."pedestrian-dag" or (buildDepError "pedestrian-dag"))
          (hsPkgs."crf-chain1-constrained" or (buildDepError "crf-chain1-constrained"))
          (hsPkgs."crf-chain2-tiers" or (buildDepError "crf-chain2-tiers"))
          (hsPkgs."tagset-positional" or (buildDepError "tagset-positional"))
          (hsPkgs."sgd" or (buildDepError "sgd"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."lazy-io" or (buildDepError "lazy-io"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."scotty" or (buildDepError "scotty"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."dhall" or (buildDepError "dhall"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "concraft-pl" = {
          depends = [
            (hsPkgs."concraft-pl" or (buildDepError "concraft-pl"))
            (hsPkgs."concraft" or (buildDepError "concraft"))
            (hsPkgs."tagset-positional" or (buildDepError "tagset-positional"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."sgd" or (buildDepError "sgd"))
            (hsPkgs."pedestrian-dag" or (buildDepError "pedestrian-dag"))
            (hsPkgs."crf-chain1-constrained" or (buildDepError "crf-chain1-constrained"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."dhall" or (buildDepError "dhall"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }