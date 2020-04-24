{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "turing"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "2015 Sebastian Poeplau";
      maintainer = "Sebastian Poeplau <sebastian.poeplau@gmail.com>";
      author = "Sebastian Poeplau";
      homepage = "http://github.com/sebastianpoeplau/turing#readme";
      url = "";
      synopsis = "A simple simulator for Turing machines";
      description = "This package provides some basic functions and types to\nsimulate a Turing machine.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "turing-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."turing" or ((hsPkgs.pkgs-errors).buildDepError "turing"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }