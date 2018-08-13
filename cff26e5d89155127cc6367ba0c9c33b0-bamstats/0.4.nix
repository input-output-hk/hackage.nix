{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
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