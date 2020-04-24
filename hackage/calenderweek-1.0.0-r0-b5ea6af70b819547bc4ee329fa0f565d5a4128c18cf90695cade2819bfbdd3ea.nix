{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "calenderweek"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Rolf Meissner";
      maintainer = "rolf@msnr.com";
      author = "Rolf Meissner";
      homepage = "";
      url = "";
      synopsis = "Commandline tool to get week of the year";
      description = "Prints week of year for given date. Installs 'kw' binary that returns week of today or of provided date (YYYY-MM-DD)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "kw" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }