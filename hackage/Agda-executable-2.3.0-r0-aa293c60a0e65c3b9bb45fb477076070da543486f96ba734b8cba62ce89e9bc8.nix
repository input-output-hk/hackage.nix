{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Agda-executable";
        version = "2.3.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ulf Norell <ulfn@chalmers.se>";
      author = "Ulf Norell, Nils Anders Danielsson, Catarina Coquand, Makoto Takeyama, Andreas Abel, ...";
      homepage = "http://wiki.portal.chalmers.se/agda/";
      url = "";
      synopsis = "Command-line program for type-checking and compiling Agda programs";
      description = "This package provides a command-line program for type-checking and\ncompiling Agda programs. The program can also generate hyperlinked,\nhighlighted HTML files from Agda sources.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "agda" = {
          depends  = [
            (hsPkgs.Agda)
            (hsPkgs.base)
          ];
        };
      };
    };
  }