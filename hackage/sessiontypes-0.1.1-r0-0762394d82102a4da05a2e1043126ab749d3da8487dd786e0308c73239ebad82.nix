{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sessiontypes"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "2017 Ferdinand van Walree";
      maintainer = "Ferdinand van Walree";
      author = "Ferdinand van Walree";
      homepage = "https://github.com/Ferdinand-vW/sessiontypes#readme";
      url = "";
      synopsis = "Session types library";
      description = "This packages provides a deep embedded domain-specific language for writing session typed program.\nA session typed program is a program annotated with session types. A session type describes a communication protocol at the type-level.\nThe motivation for doing so is that it gives you a static guarantee that a program correctly implements a protocol.\nIt may even guarantee that no deadlocking can occur.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-svg"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "test-visualizer" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sessiontypes" or ((hsPkgs.pkgs-errors).buildDepError "sessiontypes"))
            ];
          buildable = true;
          };
        };
      tests = {
        "sessiontypes-debug" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sessiontypes" or ((hsPkgs.pkgs-errors).buildDepError "sessiontypes"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        "sessiontypes-normalize" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sessiontypes" or ((hsPkgs.pkgs-errors).buildDepError "sessiontypes"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        "sessiontypes-interactive" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sessiontypes" or ((hsPkgs.pkgs-errors).buildDepError "sessiontypes"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            ];
          buildable = true;
          };
        };
      };
    }