{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4.0";
        identifier = {
          name = "BiobaseMAF";
          version = "0.5.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2011";
        maintainer = "choener@tbi.univie.ac.at";
        author = "Christian Hoener zu Siederdissen";
        homepage = "http://www.tbi.univie.ac.at/~choener/";
        url = "";
        synopsis = "Multiple Alignment Format";
        description = "MAF files store multiple (multiple) alignments, i.e. complete\nn-way alignments between different genomes.";
        buildType = "Simple";
      };
      components = {
        BiobaseMAF = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.iteratee
          ];
        };
      };
    }