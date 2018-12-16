{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "Emping";
        version = "0.4";
      };
      license = "LicenseRef-GPL";
      copyright = "Hans van Thiel 2006 - 2008";
      maintainer = "hthiel.char@zonnet.nl";
      author = "Hans van Thiel";
      homepage = "http://j-van-thiel.speedlinq.nl/";
      url = "";
      synopsis = "derives heuristic rules from nominal data";
      description = "utility that reads a table in a csv (comma\nseparated) format that can be generated from\nOpen Office Calc (spreadsheet), derives all shortest rules\nfor a selected attribute, and writes them to a .csv file\nthat can be read by OO Calc. The shortest rules may be\npartially ordered by implication (entailment) and equivalence\n(equality) and the top level is also shown in .csv format.\nOptionally all logical entailments and equalities are listed\nas well. If the data set contains ambiguous rules or more\noccurrences of the same rule the user is warned. Version 0.4\nallows blank fields for values and has a Gtk2Hs based GUI.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "emping" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }