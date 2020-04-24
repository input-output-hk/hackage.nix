{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hardware-edsl"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "Markus Aronsson <mararon@chalmers.se>";
      homepage = "https://github.com/markus-git/hardware-edsl";
      url = "";
      synopsis = "Deep embedding of hardware descriptions with code generation.";
      description = "Deep embedding of hardware descriptions with code generation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."syntactic" or ((hsPkgs.pkgs-errors).buildDepError "syntactic"))
          (hsPkgs."operational-alacarte" or ((hsPkgs.pkgs-errors).buildDepError "operational-alacarte"))
          (hsPkgs."language-vhdl" or ((hsPkgs.pkgs-errors).buildDepError "language-vhdl"))
          ];
        buildable = true;
        };
      };
    }