{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "llvm-hs-pretty"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "stephen.m.diehl@gmail.com";
      author = "Stephen Diehl";
      homepage = "https://github.com/llvm-hs/llvm-hs-pretty";
      url = "";
      synopsis = "Pretty printer for LLVM IR.";
      description = "Pretty printer for LLVM IR.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."llvm-hs-pure" or ((hsPkgs.pkgs-errors).buildDepError "llvm-hs-pure"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."wl-pprint-text" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hspec"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            (hsPkgs."llvm-hs-pretty" or ((hsPkgs.pkgs-errors).buildDepError "llvm-hs-pretty"))
            (hsPkgs."llvm-hs" or ((hsPkgs.pkgs-errors).buildDepError "llvm-hs"))
            (hsPkgs."llvm-hs-pure" or ((hsPkgs.pkgs-errors).buildDepError "llvm-hs-pure"))
            ];
          buildable = true;
          };
        };
      };
    }