{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nagios-check"; version = "0.2.0"; };
      license = "MIT";
      copyright = "2014 Sharif Olorin";
      maintainer = "sio@tesser.org";
      author = "Sharif Olorin";
      homepage = "https://github.com/fractalcat/nagios-check";
      url = "";
      synopsis = "Package for writing monitoring plugins";
      description = "Implements Nagios plugin development guidelines\nwithin a Haskell framework for writing Nagios\nchecks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."nagios-perfdata" or ((hsPkgs.pkgs-errors).buildDepError "nagios-perfdata"))
          ];
        buildable = true;
        };
      tests = {
        "nagios-check-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."nagios-check" or ((hsPkgs.pkgs-errors).buildDepError "nagios-check"))
            ];
          buildable = true;
          };
        };
      };
    }