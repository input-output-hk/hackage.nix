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
      specVersion = "1.8";
      identifier = {
        name = "simple-tabular";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "bart@cs.pdx.edu";
      author = "Bart Massey";
      homepage = "http://github.com/BartMassey/simple-tabular";
      url = "";
      synopsis = "Simple tabular-text formatter";
      description = "This package has a simplistic formatter\nthat accepts a troff-style column descriptor\nand a list of lists of strings, and produces\na string consisting of a formatted table.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }