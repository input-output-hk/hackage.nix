{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "dapi"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://massysett.github.com/dapi";
      url = "";
      synopsis = "Prints a series of dates";
      description = "dapi prints a series of dates to the console. You can filter the\ndates based on multiple criteria, such as day of the week, day,\nmonth, and more. Slightly more information is at the homepage link\ngiven below.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dapi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."prednote" or ((hsPkgs.pkgs-errors).buildDepError "prednote"))
            (hsPkgs."multiarg" or ((hsPkgs.pkgs-errors).buildDepError "multiarg"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."rainbow" or ((hsPkgs.pkgs-errors).buildDepError "rainbow"))
            ];
          buildable = true;
          };
        };
      };
    }