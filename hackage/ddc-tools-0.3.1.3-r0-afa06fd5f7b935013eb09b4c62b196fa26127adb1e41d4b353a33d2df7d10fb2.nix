{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ddc-tools"; version = "0.3.1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler command line tools.";
      description = "Disciplined Disciple Compiler command line tools.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "ddc-check" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ddc-core" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core"))
            ];
          buildable = true;
          };
        "ddc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."ddc-base" or ((hsPkgs.pkgs-errors).buildDepError "ddc-base"))
            (hsPkgs."ddc-core" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core"))
            (hsPkgs."ddc-core-eval" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-eval"))
            (hsPkgs."ddc-core-simpl" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-simpl"))
            (hsPkgs."ddc-core-salt" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-salt"))
            (hsPkgs."ddc-core-llvm" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-llvm"))
            (hsPkgs."ddc-code" or ((hsPkgs.pkgs-errors).buildDepError "ddc-code"))
            (hsPkgs."ddc-build" or ((hsPkgs.pkgs-errors).buildDepError "ddc-build"))
            (hsPkgs."ddc-driver" or ((hsPkgs.pkgs-errors).buildDepError "ddc-driver"))
            ];
          buildable = true;
          };
        "ddci-core" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ddc-base" or ((hsPkgs.pkgs-errors).buildDepError "ddc-base"))
            (hsPkgs."ddc-core" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core"))
            (hsPkgs."ddc-core-eval" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-eval"))
            (hsPkgs."ddc-core-simpl" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-simpl"))
            (hsPkgs."ddc-core-salt" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-salt"))
            (hsPkgs."ddc-core-llvm" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-llvm"))
            (hsPkgs."ddc-code" or ((hsPkgs.pkgs-errors).buildDepError "ddc-code"))
            (hsPkgs."ddc-build" or ((hsPkgs.pkgs-errors).buildDepError "ddc-build"))
            (hsPkgs."ddc-driver" or ((hsPkgs.pkgs-errors).buildDepError "ddc-driver"))
            ];
          buildable = true;
          };
        };
      };
    }