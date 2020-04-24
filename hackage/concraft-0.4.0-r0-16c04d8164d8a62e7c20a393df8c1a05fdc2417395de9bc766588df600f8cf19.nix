{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "concraft"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Jakub Waszczuk, 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "http://zil.ipipan.waw.pl/Concraft";
      url = "";
      synopsis = "Morphosyntactic tagging tool based on constrained CRFs";
      description = "A morphosyntactic tagging tool based on constrained conditional\nrandom fields.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-binary" or ((hsPkgs.pkgs-errors).buildDepError "vector-binary"))
          (hsPkgs."crf-chain1-constrained" or ((hsPkgs.pkgs-errors).buildDepError "crf-chain1-constrained"))
          (hsPkgs."monad-ox" or ((hsPkgs.pkgs-errors).buildDepError "monad-ox"))
          (hsPkgs."sgd" or ((hsPkgs.pkgs-errors).buildDepError "sgd"))
          (hsPkgs."tagset-positional" or ((hsPkgs.pkgs-errors).buildDepError "tagset-positional"))
          (hsPkgs."crf-chain2-generic" or ((hsPkgs.pkgs-errors).buildDepError "crf-chain2-generic"))
          (hsPkgs."monad-codec" or ((hsPkgs.pkgs-errors).buildDepError "monad-codec"))
          (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
          (hsPkgs."comonad-transformers" or ((hsPkgs.pkgs-errors).buildDepError "comonad-transformers"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          ];
        buildable = true;
        };
      exes = {
        "concraft" = {
          depends = [
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }