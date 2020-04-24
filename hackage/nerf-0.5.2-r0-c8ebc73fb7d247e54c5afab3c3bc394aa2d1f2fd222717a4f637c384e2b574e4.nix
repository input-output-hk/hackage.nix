{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "nerf"; version = "0.5.2"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."polysoup" or ((hsPkgs.pkgs-errors).buildDepError "polysoup"))
          (hsPkgs."crf-chain1" or ((hsPkgs.pkgs-errors).buildDepError "crf-chain1"))
          (hsPkgs."data-named" or ((hsPkgs.pkgs-errors).buildDepError "data-named"))
          (hsPkgs."monad-ox" or ((hsPkgs.pkgs-errors).buildDepError "monad-ox"))
          (hsPkgs."sgd" or ((hsPkgs.pkgs-errors).buildDepError "sgd"))
          (hsPkgs."polimorf" or ((hsPkgs.pkgs-errors).buildDepError "polimorf"))
          (hsPkgs."dawg" or ((hsPkgs.pkgs-errors).buildDepError "dawg"))
          (hsPkgs."tokenize" or ((hsPkgs.pkgs-errors).buildDepError "tokenize"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."IntervalMap" or ((hsPkgs.pkgs-errors).buildDepError "IntervalMap"))
          ];
        buildable = true;
        };
      exes = {
        "nerf" = {
          depends = [
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      };
    }