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
        version = "0.6";
      };
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
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.fgl)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.gtk)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }