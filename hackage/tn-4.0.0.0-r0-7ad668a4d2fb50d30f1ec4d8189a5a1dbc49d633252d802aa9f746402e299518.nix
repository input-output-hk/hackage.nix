{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tn";
        version = "4.0.0.0";
      };
      license = "ISC";
      copyright = "Copyright (c) 2014-2016, Peter Harpending.";
      maintainer = "peter@harpending.org";
      author = "Peter Harpending";
      homepage = "https://github.com/pharpend/tn";
      url = "";
      synopsis = "A simple daily journal program";
      description = "tn is a simple program to keep journals.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tn" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.optparse-simple)
            (hsPkgs.pager)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.turtle)
            (hsPkgs.vector)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.tn)
          ];
        };
      };
    };
  }