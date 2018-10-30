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
      specVersion = "1.2.1";
      identifier = {
        name = "pasty";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008 Markus Dittrich";
      maintainer = "Markus Dittrich <markus.lists@gmail.com>";
      author = "Markus Dittrich <markus.lists@gmail.com>";
      homepage = "http://github.com/markusle/pasty/tree/master";
      url = "";
      synopsis = "A simple command line pasting utility";
      description = "pasty is simple command line utility for extracting\na collection of columns from any number of input\nfiles and pasting them in a specified order to\nstdout.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }