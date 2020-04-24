{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "antiope-athena"; version = "6.0.1"; };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/antiope#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/arbor/antiope#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka" or ((hsPkgs.pkgs-errors).buildDepError "amazonka"))
          (hsPkgs."amazonka-athena" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-athena"))
          (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      tests = {
        "antiope-athena-test" = {
          depends = [
            (hsPkgs."amazonka" or ((hsPkgs.pkgs-errors).buildDepError "amazonka"))
            (hsPkgs."amazonka-athena" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-athena"))
            (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
            (hsPkgs."antiope-athena" or ((hsPkgs.pkgs-errors).buildDepError "antiope-athena"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
            ];
          buildable = true;
          };
        };
      };
    }