{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "motor-diagrams"; version = "0.2.0.0"; };
      license = "MPL-2.0";
      copyright = "Oskar Wickström";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "";
      url = "";
      synopsis = "Generate state diagrams from Motor FSM typeclasses";
      description = "Generate state diagrams from Motor FSM typeclasses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."motor" or ((hsPkgs.pkgs-errors).buildDepError "motor"))
          (hsPkgs."motor-reflection" or ((hsPkgs.pkgs-errors).buildDepError "motor-reflection"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-discover" or ((hsPkgs.pkgs-errors).buildDepError "hspec-discover"))
            (hsPkgs."motor" or ((hsPkgs.pkgs-errors).buildDepError "motor"))
            (hsPkgs."motor-reflection" or ((hsPkgs.pkgs-errors).buildDepError "motor-reflection"))
            (hsPkgs."motor-diagrams" or ((hsPkgs.pkgs-errors).buildDepError "motor-diagrams"))
            ];
          buildable = true;
          };
        };
      };
    }