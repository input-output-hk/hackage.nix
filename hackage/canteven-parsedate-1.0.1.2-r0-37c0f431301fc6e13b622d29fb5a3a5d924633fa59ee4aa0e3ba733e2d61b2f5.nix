{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "canteven-parsedate"; version = "1.0.1.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rowens@sumall.com, ababkin@sumall.com";
      author = "Rick Owens, Alex Babkin";
      homepage = "";
      url = "";
      synopsis = "Date / time parsing utilities that try to guess the date / time format.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."timezone-series" or ((hsPkgs.pkgs-errors).buildDepError "timezone-series"))
          (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
          ];
        buildable = true;
        };
      tests = {
        "test-parsedate" = {
          depends = [
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."canteven-parsedate" or ((hsPkgs.pkgs-errors).buildDepError "canteven-parsedate"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."timezone-series" or ((hsPkgs.pkgs-errors).buildDepError "timezone-series"))
            (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
            ];
          buildable = true;
          };
        };
      };
    }