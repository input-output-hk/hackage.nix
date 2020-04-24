{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Emping"; version = "0.6"; };
      license = "LicenseRef-GPL";
      copyright = "Hans van Thiel 2006 - 2009";
      maintainer = "hthiel.char@zonnet.nl";
      author = "Hans van Thiel";
      homepage = "http://www.muitovar.com";
      url = "";
      synopsis = "derives heuristic rules from nominal data";
      description = "interactive (prototype) tool for discovery and analysis of predictive relations in nominal data\nreads tables in Open Office Calc .csv format, saves results in .csv and .dot (GraphViz)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "emping" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }