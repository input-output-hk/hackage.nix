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
        name = "bamstats";
        version = "0.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://blog.malde.org/posts/bamstats.html";
      url = "";
      synopsis = "A program to extract various information from BAM alignmnet files.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {};
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