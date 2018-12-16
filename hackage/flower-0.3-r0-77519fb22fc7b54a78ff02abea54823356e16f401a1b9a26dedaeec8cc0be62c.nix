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
      specVersion = "1.6";
      identifier = {
        name = "flower";
        version = "0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/biohaskell/flower";
      url = "";
      synopsis = "Analyze 454 flowgrams  (.SFF files)";
      description = "flower - FLOWgram ExtractoR tools\n\nThe flower executable reads files in SFF-format and produces various output,\nincluding sequences with quality, or flowgram data in tabular format.\n\nThe fselect executable extracts reads from SFF-files, generating a new\nSFF-file with a subset of the reads based on various criteria.\n\nSometimes SFF files will appear to be corrupted, with all-zero blocks in the\nfile. The frecover program ignores these and tries to resync with the file after an\ninvalid region.  This was likely a one-time bug in the 454 software, so this program\nis probably not so useful any more.\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/flower>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "flower" = {
          depends = [
            (hsPkgs.bio)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
          ];
        };
        "flowselect" = {
          depends = [
            (hsPkgs.bio)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
          ];
        };
        "frecover" = {
          depends = [
            (hsPkgs.bio)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
          ];
        };
        "frename" = {
          depends = [
            (hsPkgs.bio)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
          ];
        };
        "flowt" = {
          depends = [
            (hsPkgs.bio)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.random)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }