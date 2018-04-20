{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "modify-fasta";
          version = "0.8.0.2";
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
        exes = {
          modify-fasta = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.text-show
              hsPkgs.split
              hsPkgs.optparse-applicative
              hsPkgs.fasta
              hsPkgs.regex-tdfa
              hsPkgs.regex-tdfa-text
              hsPkgs.pipes
              hsPkgs.pipes-text
            ];
          };
        };
      };
    }