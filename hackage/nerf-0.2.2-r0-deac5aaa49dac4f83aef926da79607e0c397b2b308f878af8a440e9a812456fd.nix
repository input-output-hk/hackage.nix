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
      identifier = { name = "nerf"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/nerf";
      url = "";
      synopsis = "Nerf, the named entity recognition tool based on linear-chain CRFs";
      description = "The package provides the named entity recognition (NER) tool divided into a\nback-end library (see the \"NLP.Nerf\" module) and the front-end tool nerf.\nUsing the library you can model and recognize named entities (NEs) which,\nfor a particular sentence, take the form of forest with NE category values\nkept in internal nodes and sentence words kept in forest leaves.\n\nTo model NE forests we combine two different techniques. The IOB codec\nis used to translate to and fro between the original, forest representation\nof NEs and the sequence of atomic labels. In other words, it provides two\nisomorphic functions for encoding and decoding between both\nrepresentations. Linear-chain conditional random fields, on the other hand,\nprovide the framework for label modelling and tagging.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."text-binary" or (buildDepError "text-binary"))
          (hsPkgs."polysoup" or (buildDepError "polysoup"))
          (hsPkgs."crf-chain1" or (buildDepError "crf-chain1"))
          (hsPkgs."data-named" or (buildDepError "data-named"))
          (hsPkgs."monad-ox" or (buildDepError "monad-ox"))
          (hsPkgs."sgd" or (buildDepError "sgd"))
          (hsPkgs."polimorf" or (buildDepError "polimorf"))
          (hsPkgs."dawg" or (buildDepError "dawg"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          ];
        };
      exes = { "nerf" = {}; };
      };
    }