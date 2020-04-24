{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "souffle-haskell"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2019 Luc Tielen";
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
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."type-errors-pretty" or ((hsPkgs.pkgs-errors).buildDepError "type-errors-pretty"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.souffle or (pkgs.buildPackages.souffle or ((hsPkgs.pkgs-errors).buildToolDepError "souffle")))
          ];
        buildable = true;
        };
      tests = {
        "souffle-haskell-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."souffle-haskell" or ((hsPkgs.pkgs-errors).buildDepError "souffle-haskell"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."type-errors-pretty" or ((hsPkgs.pkgs-errors).buildDepError "type-errors-pretty"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          libs = [ (pkgs."c++" or ((hsPkgs.pkgs-errors).sysDepError "c++")) ];
          build-tools = [
            (hsPkgs.buildPackages.souffle or (pkgs.buildPackages.souffle or ((hsPkgs.pkgs-errors).buildToolDepError "souffle")))
            ];
          buildable = true;
          };
        };
      };
    }