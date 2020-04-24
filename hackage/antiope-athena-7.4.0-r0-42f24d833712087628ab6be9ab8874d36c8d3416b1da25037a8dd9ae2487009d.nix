{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "antiope-athena"; version = "7.4.0"; };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/antiope#readme";
      url = "";
      synopsis = "Please see the README on Github at <https://github.com/arbor/antiope#readme>";
      description = "Please see the README on Github at <https://github.com/arbor/antiope#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."amazonka" or ((hsPkgs.pkgs-errors).buildDepError "amazonka"))
          (hsPkgs."amazonka-athena" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-athena"))
          (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."amazonka" or ((hsPkgs.pkgs-errors).buildDepError "amazonka"))
            (hsPkgs."amazonka-athena" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-athena"))
            (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
            (hsPkgs."antiope-athena" or ((hsPkgs.pkgs-errors).buildDepError "antiope-athena"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }