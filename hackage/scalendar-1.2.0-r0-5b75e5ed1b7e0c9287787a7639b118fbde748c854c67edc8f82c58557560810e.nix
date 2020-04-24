{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scalendar"; version = "1.2.0"; };
      license = "MIT";
      copyright = "2017 Stack Builders Inc.";
      maintainer = "Stack Builders <hackage@stackbuilders.com>";
      author = "Sebastian Pulido Gómez <spulido@stackbuilders.com>";
      homepage = "https://github.com/stackbuilders/scalendar";
      url = "";
      synopsis = "A library for handling calendars and resource availability over time.";
      description = "scalendar is a library based on the \"top-nodes algorithm\", invented by\nMartin Rayrole <https://en.wikipedia.org/wiki/Top-nodes_algorithm>, and\nset operations, which makes it easy to handle the availability of a set of\nresources over time.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "scalendar-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."SCalendar" or ((hsPkgs.pkgs-errors).buildDepError "SCalendar"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }