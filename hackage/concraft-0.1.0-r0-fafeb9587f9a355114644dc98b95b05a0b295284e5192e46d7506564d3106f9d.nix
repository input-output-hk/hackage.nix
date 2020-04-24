{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "concraft"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Jakub Waszczuk, 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/concraft";
      url = "";
      synopsis = "Morphosyntactic tagging tool based on constrained CRFs";
      description = "A morphosyntactic tagging tool based on constrained conditional\nrandom fields.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."crf-chain1-constrained" or ((hsPkgs.pkgs-errors).buildDepError "crf-chain1-constrained"))
          (hsPkgs."monad-ox" or ((hsPkgs.pkgs-errors).buildDepError "monad-ox"))
          (hsPkgs."sgd" or ((hsPkgs.pkgs-errors).buildDepError "sgd"))
          ];
        buildable = true;
        };
      exes = {
        "concraft-guess" = {
          depends = [
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }