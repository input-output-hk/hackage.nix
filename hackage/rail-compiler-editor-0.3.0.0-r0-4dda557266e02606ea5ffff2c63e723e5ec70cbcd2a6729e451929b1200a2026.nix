{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rail-compiler-editor"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "borgers@mi.fu-berlin.de";
      author = "see AUTHORS";
      homepage = "https://github.com/SWP-Ubau-SoSe2014-Haskell/SWPSoSe14";
      url = "";
      synopsis = "Compiler and editor for the esolang rail.";
      description = "A compiler and a graphical editor for the esoteric programming language rail.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."llvm-general-pure" or ((hsPkgs.pkgs-errors).buildDepError "llvm-general-pure"))
          (hsPkgs."llvm-general" or ((hsPkgs.pkgs-errors).buildDepError "llvm-general"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "RailCompiler" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."rail-compiler-editor" or ((hsPkgs.pkgs-errors).buildDepError "rail-compiler-editor"))
            ];
          buildable = true;
          };
        "RailEditor" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."rail-compiler-editor" or ((hsPkgs.pkgs-errors).buildDepError "rail-compiler-editor"))
            ];
          buildable = true;
          };
        };
      tests = {
        "testcases" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."rail-compiler-editor" or ((hsPkgs.pkgs-errors).buildDepError "rail-compiler-editor"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }