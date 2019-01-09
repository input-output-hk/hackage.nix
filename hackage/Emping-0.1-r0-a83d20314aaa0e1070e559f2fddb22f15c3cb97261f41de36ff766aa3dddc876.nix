{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Emping"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Hans van Thiel 2006 - 2007";
      maintainer = "hthiel.char@zonnet.nl";
      author = "Hans van Thiel";
      homepage = "j-van-thiel.speedlinq.nl/";
      url = "";
      synopsis = "derives heuristic rules from nominal data";
      description = "utility that reads a table in a csv (comma\nseparated) format that can be generated from\nOpen Office Calc (spreadsheet), derives all shortest rules\nfor a selected attribute, and writes them to a .csv file\nthat can be read by OO Calc.";
      buildType = "Custom";
      };
    components = {
      exes = { "emping" = { depends = [ (hsPkgs.base) (hsPkgs.parsec) ]; }; };
      };
    }