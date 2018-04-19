{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fasta";
          version = "0.5.2.0";
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
        fasta = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.split
          ];
        };
      };
    }