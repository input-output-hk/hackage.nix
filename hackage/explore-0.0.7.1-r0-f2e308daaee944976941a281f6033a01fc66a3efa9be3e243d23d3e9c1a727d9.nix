{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "explore";
        version = "0.0.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2009, 2010, Cetin Sert";
      maintainer = "Cetin Sert <cetin.sert@gmail.com>";
      author = "Cetin Sert";
      homepage = "http://corsis.sourceforge.net/haskell/explore";
      url = "";
      synopsis = "Experimental Plot data Reconstructor";
      description = "Very first prototype of a command line tool to\nextract pixel positions matching a given colour\nto help reconstruct plot data. See example.ods\nor example.xls, README and Main.hs on the\nproject homepage to figure out its usage.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "explore" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.pngload)
          ];
        };
      };
    };
  }