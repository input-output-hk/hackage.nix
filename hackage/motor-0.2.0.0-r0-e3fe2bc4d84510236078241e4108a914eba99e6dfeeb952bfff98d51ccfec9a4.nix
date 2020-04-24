{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "motor"; version = "0.2.0.0"; };
      license = "MPL-2.0";
      copyright = "Oskar Wickström";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "";
      url = "";
      synopsis = "Type-safe effectful state machines in Haskell";
      description = "/Motor/ is an experimental Haskell library for building finite-state\nmachines with type-safe transitions and effects. It draws inspiration\nfrom the Idris [ST\n](http://docs.idris-lang.org/en/latest/st/state.html) library. See the\n\"Motor.FSM\" module for documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."CTRex" or ((hsPkgs.pkgs-errors).buildDepError "CTRex"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."indexed" or ((hsPkgs.pkgs-errors).buildDepError "indexed"))
          (hsPkgs."indexed-extras" or ((hsPkgs.pkgs-errors).buildDepError "indexed-extras"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."indexed" or ((hsPkgs.pkgs-errors).buildDepError "indexed"))
            (hsPkgs."indexed-extras" or ((hsPkgs.pkgs-errors).buildDepError "indexed-extras"))
            (hsPkgs."CTRex" or ((hsPkgs.pkgs-errors).buildDepError "CTRex"))
            (hsPkgs."motor" or ((hsPkgs.pkgs-errors).buildDepError "motor"))
            ];
          buildable = true;
          };
        };
      };
    }