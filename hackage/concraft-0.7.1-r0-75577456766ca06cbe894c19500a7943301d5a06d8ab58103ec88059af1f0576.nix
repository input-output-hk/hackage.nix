{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildanatool = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "concraft"; version = "0.7.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-binary" or ((hsPkgs.pkgs-errors).buildDepError "vector-binary"))
          (hsPkgs."monad-ox" or ((hsPkgs.pkgs-errors).buildDepError "monad-ox"))
          (hsPkgs."sgd" or ((hsPkgs.pkgs-errors).buildDepError "sgd"))
          (hsPkgs."tagset-positional" or ((hsPkgs.pkgs-errors).buildDepError "tagset-positional"))
          (hsPkgs."crf-chain1-constrained" or ((hsPkgs.pkgs-errors).buildDepError "crf-chain1-constrained"))
          (hsPkgs."crf-chain2-tiers" or ((hsPkgs.pkgs-errors).buildDepError "crf-chain2-tiers"))
          (hsPkgs."monad-codec" or ((hsPkgs.pkgs-errors).buildDepError "monad-codec"))
          (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."comonad-transformers" or ((hsPkgs.pkgs-errors).buildDepError "comonad-transformers"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."lazy-io" or ((hsPkgs.pkgs-errors).buildDepError "lazy-io"))
          ];
        buildable = true;
        };
      exes = {
        "concraft-analyse-model" = {
          depends = (pkgs.lib).optionals (flags.buildanatool) [
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."logfloat" or ((hsPkgs.pkgs-errors).buildDepError "logfloat"))
            (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
            (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
            (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
            ];
          buildable = if flags.buildanatool then true else false;
          };
        };
      };
    }