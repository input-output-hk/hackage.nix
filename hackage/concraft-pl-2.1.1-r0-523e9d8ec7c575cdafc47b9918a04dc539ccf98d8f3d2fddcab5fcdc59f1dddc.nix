{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "concraft-pl"; version = "2.1.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."concraft" or ((hsPkgs.pkgs-errors).buildDepError "concraft"))
          (hsPkgs."pedestrian-dag" or ((hsPkgs.pkgs-errors).buildDepError "pedestrian-dag"))
          (hsPkgs."crf-chain1-constrained" or ((hsPkgs.pkgs-errors).buildDepError "crf-chain1-constrained"))
          (hsPkgs."crf-chain2-tiers" or ((hsPkgs.pkgs-errors).buildDepError "crf-chain2-tiers"))
          (hsPkgs."tagset-positional" or ((hsPkgs.pkgs-errors).buildDepError "tagset-positional"))
          (hsPkgs."sgd" or ((hsPkgs.pkgs-errors).buildDepError "sgd"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."lazy-io" or ((hsPkgs.pkgs-errors).buildDepError "lazy-io"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "concraft-pl" = {
          depends = [
            (hsPkgs."concraft-pl" or ((hsPkgs.pkgs-errors).buildDepError "concraft-pl"))
            (hsPkgs."concraft" or ((hsPkgs.pkgs-errors).buildDepError "concraft"))
            (hsPkgs."tagset-positional" or ((hsPkgs.pkgs-errors).buildDepError "tagset-positional"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."sgd" or ((hsPkgs.pkgs-errors).buildDepError "sgd"))
            (hsPkgs."pedestrian-dag" or ((hsPkgs.pkgs-errors).buildDepError "pedestrian-dag"))
            (hsPkgs."crf-chain1-constrained" or ((hsPkgs.pkgs-errors).buildDepError "crf-chain1-constrained"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }