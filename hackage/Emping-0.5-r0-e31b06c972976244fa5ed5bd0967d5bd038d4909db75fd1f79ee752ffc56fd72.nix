{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.0";
      identifier = { name = "Emping"; version = "0.5"; };
      license = "LicenseRef-GPL";
      copyright = "Hans van Thiel 2006 - 2008";
      maintainer = "hthiel.char@zonnet.nl";
      author = "Hans van Thiel";
      homepage = "http://home.telfort.nl/sp969709/";
      url = "";
      synopsis = "derives heuristic rules from nominal data";
      description = "utility that reads a table in a csv (comma separated) format that can be generated from\nOpen Office Calc (spreadsheet), derives all shortest rules for a selected attribute,\nand writes them to a .csv file that can be read by OO Calc. The shortest rules may be\npartially ordered by implication (entailment) and equivalence (equality) and this partial\norder is shown in Graphviz readable .dot files. Emping has a Gtk2Hs based GUI.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "emping" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }