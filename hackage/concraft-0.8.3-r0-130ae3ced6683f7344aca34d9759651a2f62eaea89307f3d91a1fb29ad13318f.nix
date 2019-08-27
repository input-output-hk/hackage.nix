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
    flags = { buildanatool = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "concraft"; version = "0.8.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Jakub Waszczuk, 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "http://zil.ipipan.waw.pl/Concraft";
      url = "";
      synopsis = "Morphological disambiguation based on constrained CRFs";
      description = "A morphological disambiguation library based on\nconstrained conditional random fields.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-binary" or (buildDepError "text-binary"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-binary" or (buildDepError "vector-binary"))
          (hsPkgs."monad-ox" or (buildDepError "monad-ox"))
          (hsPkgs."sgd" or (buildDepError "sgd"))
          (hsPkgs."tagset-positional" or (buildDepError "tagset-positional"))
          (hsPkgs."crf-chain1-constrained" or (buildDepError "crf-chain1-constrained"))
          (hsPkgs."crf-chain2-tiers" or (buildDepError "crf-chain2-tiers"))
          (hsPkgs."monad-codec" or (buildDepError "monad-codec"))
          (hsPkgs."data-lens" or (buildDepError "data-lens"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."lazy-io" or (buildDepError "lazy-io"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          ];
        };
      exes = {
        "concraft-analyse-model" = {
          depends = (pkgs.lib).optionals (flags.buildanatool) [
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."logfloat" or (buildDepError "logfloat"))
            ];
          };
        };
      };
    }