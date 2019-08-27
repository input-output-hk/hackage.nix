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
      specVersion = "1.6";
      identifier = { name = "crf-chain2-tiers"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/crf-chain2-tiers";
      url = "";
      synopsis = "Second-order, tiered, constrained, linear conditional random fields";
      description = "The library provides implementation of the second-order, linear\nconditional random fields (CRFs) with position-wise constraints\nimposed over label values.  Each label consists of a vector of\nsmaller, atomic labels, and over each tier (layer) a separate\nset of model features is defined.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."vector-binary" or (buildDepError "vector-binary"))
          (hsPkgs."monad-codec" or (buildDepError "monad-codec"))
          (hsPkgs."data-lens" or (buildDepError "data-lens"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."logfloat" or (buildDepError "logfloat"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."sgd" or (buildDepError "sgd"))
          (hsPkgs."vector-th-unbox" or (buildDepError "vector-th-unbox"))
          (hsPkgs."pedestrian-dag" or (buildDepError "pedestrian-dag"))
          (hsPkgs."data-memocombinators" or (buildDepError "data-memocombinators"))
          ];
        };
      };
    }