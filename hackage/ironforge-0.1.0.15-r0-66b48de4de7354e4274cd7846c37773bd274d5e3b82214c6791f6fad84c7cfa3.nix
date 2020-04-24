{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ironforge"; version = "0.1.0.15"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marvin.cohrs@gmx.net";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "A technical demo for Antisplice.";
      description = "This is an example dungeon on top of Antisplice.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."chatty" or ((hsPkgs.pkgs-errors).buildDepError "chatty"))
          (hsPkgs."antisplice" or ((hsPkgs.pkgs-errors).buildDepError "antisplice"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "ironforge" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chatty" or ((hsPkgs.pkgs-errors).buildDepError "chatty"))
            (hsPkgs."antisplice" or ((hsPkgs.pkgs-errors).buildDepError "antisplice"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }