{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ddc-driver"; version = "0.4.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler top-level driver.";
      description = "This defines the top-level commands supported by the compiler,\nsuch as @-make@ and @-compile@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."ddc-base" or ((hsPkgs.pkgs-errors).buildDepError "ddc-base"))
          (hsPkgs."ddc-core" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core"))
          (hsPkgs."ddc-core-simpl" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-simpl"))
          (hsPkgs."ddc-core-salt" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-salt"))
          (hsPkgs."ddc-core-llvm" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-llvm"))
          (hsPkgs."ddc-core-flow" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-flow"))
          (hsPkgs."ddc-core-tetra" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-tetra"))
          (hsPkgs."ddc-source-tetra" or ((hsPkgs.pkgs-errors).buildDepError "ddc-source-tetra"))
          (hsPkgs."ddc-build" or ((hsPkgs.pkgs-errors).buildDepError "ddc-build"))
          ];
        buildable = true;
        };
      };
    }