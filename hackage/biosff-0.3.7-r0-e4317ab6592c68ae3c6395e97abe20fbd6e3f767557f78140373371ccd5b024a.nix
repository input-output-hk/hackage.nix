{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      flower = true;
      frecover = true;
      fclip = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "biosff";
        version = "0.3.7";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "ketil@malde.org";
      author = "Ketil Malde";
      homepage = "http://biohaskell.org/";
      url = "";
      synopsis = "Library and executables for working with SFF files";
      description = "The library contains the functionality for reading and writing\nSFF files (sequencing data from 454 and Ion Torrent).  It duplicates\ncode from (and is incompatible with) the \"bio\" library.";
      buildType = "Simple";
    };
    components = {
      "biosff" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.biocore)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.array)
        ];
      };
      exes = {
        "flower" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.mtl)
            (hsPkgs.array)
          ];
        };
        "frecover" = {
          depends  = [ (hsPkgs.base) ];
        };
        "fclip" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }