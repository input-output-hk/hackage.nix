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
        name = "fasta";
        version = "0.6.1.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "gregory.schwartz@drexel.edu";
      author = "Gregory W. Schwartz";
      homepage = "https://github.com/GregorySchwartz/fasta";
      url = "";
      synopsis = "A simple, mindless parser for fasta files.";
      description = "The fasta type specifically split by String, Text, and Lazy Text for simplicity and ease of use, although lacking many features of other parsers. Mainly for use with bioinformatics applications which are very general and need no conversion overhead.";
      buildType = "Simple";
    };
    components = {
      "fasta" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.split)
          (hsPkgs.pipes)
          (hsPkgs.pipes-group)
          (hsPkgs.pipes-text)
          (hsPkgs.lens)
          (hsPkgs.foldl)
        ];
      };
    };
  }