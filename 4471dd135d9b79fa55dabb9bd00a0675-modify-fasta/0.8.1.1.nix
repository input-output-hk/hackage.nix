{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "modify-fasta";
          version = "0.8.1.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "gregory.schwartz@drexel.edu";
        author = "GregorySchwartz";
        homepage = "https://github.com/GregorySchwartz/modify-fasta";
        url = "";
        synopsis = "Modify fasta (and CLIP) files in several optional ways";
        description = "";
        buildType = "Simple";
      };
      components = {
        modify-fasta = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.text-show
            hsPkgs.split
            hsPkgs.regex-tdfa
            hsPkgs.regex-tdfa-text
            hsPkgs.fasta
          ];
        };
        exes = {
          modify-fasta = {
            depends  = [
              hsPkgs.modify-fasta
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.split
              hsPkgs.fasta
              hsPkgs.pipes
              hsPkgs.pipes-text
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }