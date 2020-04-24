{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ddc-build"; version = "0.3.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler build framework.";
      description = "Disciplined Disciple Compiler build framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."ddc-base" or ((hsPkgs.pkgs-errors).buildDepError "ddc-base"))
          (hsPkgs."ddc-core" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core"))
          (hsPkgs."ddc-core-eval" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-eval"))
          (hsPkgs."ddc-core-simpl" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-simpl"))
          (hsPkgs."ddc-core-salt" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-salt"))
          (hsPkgs."ddc-core-llvm" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-llvm"))
          (hsPkgs."ddc-core-flow" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-flow"))
          (hsPkgs."ddc-core-tetra" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-tetra"))
          ];
        buildable = true;
        };
      };
    }