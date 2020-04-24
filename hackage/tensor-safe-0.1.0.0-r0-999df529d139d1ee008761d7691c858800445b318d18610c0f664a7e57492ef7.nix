{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "tensor-safe"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Leonardo Pineyro";
      maintainer = "leopiney@gmail.com";
      author = "Leonardo Pineyro";
      homepage = "https://github.com/leopiney/tensor-safe#readme";
      url = "";
      synopsis = "Create valid deep neural network architectures";
      description = "TensorSafe provides a very simple API to create deep neural networks structures which are validated using Dependent Types. Given a list of Layers and an initial Shape, TensorSafe is able to check and corroborate the structure of the network. Also, it's possible to extract the definition and compile it to a target language like Python and JavaScript.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."casing" or ((hsPkgs.pkgs-errors).buildDepError "casing"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
          (hsPkgs."ghc-typelits-extra" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-extra"))
          (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-sized" or ((hsPkgs.pkgs-errors).buildDepError "vector-sized"))
          ];
        buildable = true;
        };
      exes = {
        "tensor-safe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."casing" or ((hsPkgs.pkgs-errors).buildDepError "casing"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
            (hsPkgs."ghc-typelits-extra" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-extra"))
            (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
            (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
            (hsPkgs."tensor-safe" or ((hsPkgs.pkgs-errors).buildDepError "tensor-safe"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-sized" or ((hsPkgs.pkgs-errors).buildDepError "vector-sized"))
            ];
          buildable = true;
          };
        };
      };
    }