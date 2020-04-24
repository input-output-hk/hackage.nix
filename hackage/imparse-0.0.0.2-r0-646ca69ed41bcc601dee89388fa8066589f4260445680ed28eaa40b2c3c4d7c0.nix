{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "imparse"; version = "0.0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Andrei Lapets <lapets@bu.edu>";
      author = "Andrei Lapets";
      homepage = "";
      url = "";
      synopsis = "Multi-platform parser analyzer and generator.";
      description = "Multi-platform parser analyzer and generator.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."staticanalysis" or ((hsPkgs.pkgs-errors).buildDepError "staticanalysis"))
          (hsPkgs."compilation" or ((hsPkgs.pkgs-errors).buildDepError "compilation"))
          (hsPkgs."ascetic" or ((hsPkgs.pkgs-errors).buildDepError "ascetic"))
          (hsPkgs."uxadt" or ((hsPkgs.pkgs-errors).buildDepError "uxadt"))
          (hsPkgs."richreports" or ((hsPkgs.pkgs-errors).buildDepError "richreports"))
          ];
        buildable = true;
        };
      exes = {
        "imparse" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."staticanalysis" or ((hsPkgs.pkgs-errors).buildDepError "staticanalysis"))
            (hsPkgs."compilation" or ((hsPkgs.pkgs-errors).buildDepError "compilation"))
            (hsPkgs."ascetic" or ((hsPkgs.pkgs-errors).buildDepError "ascetic"))
            (hsPkgs."uxadt" or ((hsPkgs.pkgs-errors).buildDepError "uxadt"))
            (hsPkgs."richreports" or ((hsPkgs.pkgs-errors).buildDepError "richreports"))
            ];
          buildable = true;
          };
        };
      };
    }