{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hcoord"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "copyleft";
      maintainer = "dfrancesconi12@gmail.com";
      author = "Daniele Francesconi";
      homepage = "https://github.com/danfran/hcoord#readme";
      url = "";
      synopsis = "Easily convert between latitude/longitude, UTM and OSGB.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."regex-pcre" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre"))
          ];
        buildable = true;
        };
      exes = {
        "hcoord-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hcoord" or ((hsPkgs.pkgs-errors).buildDepError "hcoord"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hcoord-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."hcoord" or ((hsPkgs.pkgs-errors).buildDepError "hcoord"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            ];
          buildable = true;
          };
        };
      };
    }