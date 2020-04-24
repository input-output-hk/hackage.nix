{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "souffle-haskell"; version = "0.2.0"; };
      license = "MIT";
      copyright = "2020 Luc Tielen";
      maintainer = "luc.tielen@gmail.com";
      author = "Luc Tielen";
      homepage = "https://github.com/luc-tielen/souffle-haskell#README.md";
      url = "";
      synopsis = "Souffle Datalog bindings for Haskell";
      description = "Souffle Datalog bindings for Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."type-errors-pretty" or ((hsPkgs.pkgs-errors).buildDepError "type-errors-pretty"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        libs = (pkgs.lib).optional (system.isLinux) (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"));
        build-tools = [
          (hsPkgs.buildPackages.souffle or (pkgs.buildPackages.souffle or ((hsPkgs.pkgs-errors).buildToolDepError "souffle")))
          ];
        buildable = true;
        };
      tests = {
        "souffle-haskell-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."souffle-haskell" or ((hsPkgs.pkgs-errors).buildDepError "souffle-haskell"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."type-errors-pretty" or ((hsPkgs.pkgs-errors).buildDepError "type-errors-pretty"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          libs = (pkgs.lib).optional (system.isOsx) (pkgs."c++" or ((hsPkgs.pkgs-errors).sysDepError "c++"));
          build-tools = [
            (hsPkgs.buildPackages.souffle or (pkgs.buildPackages.souffle or ((hsPkgs.pkgs-errors).buildToolDepError "souffle")))
            ];
          buildable = true;
          };
        };
      };
    }