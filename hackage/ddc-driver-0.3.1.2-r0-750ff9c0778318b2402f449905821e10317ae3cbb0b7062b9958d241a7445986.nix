{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ddc-driver"; version = "0.3.1.2"; };
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
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."ddc-base" or ((hsPkgs.pkgs-errors).buildDepError "ddc-base"))
          (hsPkgs."ddc-core" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core"))
          (hsPkgs."ddc-core-eval" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-eval"))
          (hsPkgs."ddc-core-simpl" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-simpl"))
          (hsPkgs."ddc-core-salt" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-salt"))
          (hsPkgs."ddc-core-llvm" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-llvm"))
          (hsPkgs."ddc-build" or ((hsPkgs.pkgs-errors).buildDepError "ddc-build"))
          ];
        buildable = true;
        };
      };
    }