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
      specVersion = "1.2";
      identifier = {
        name = "biopsl";
        version = "0.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "ketil@malde.org";
      author = "Ketil Malde";
      homepage = "http://biohaskell.org/";
      url = "";
      synopsis = "Library and executables for working with PSL files";
      description = "The library contains the functionality for reading and writing\nPSL files (alignment data, e.g. from BLAT output). It duplicates\ncode from (and is incompatible with) the \"bio\" library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.biocore)
          (hsPkgs.bytestring)
        ];
      };
      exes = { "psluniq" = {}; };
    };
  }