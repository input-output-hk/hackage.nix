{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "bamstats";
        version = "0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "";
      url = "";
      synopsis = "A program to extract various information from BAM alignmnet files.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bamstats" = {};
      exes = {
        "bam" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.samtools)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }