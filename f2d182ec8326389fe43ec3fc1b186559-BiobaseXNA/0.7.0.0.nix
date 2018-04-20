{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "BiobaseXNA";
          version = "0.7.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2011-2013";
        maintainer = "choener@tbi.univie.ac.at";
        author = "Christian Hoener zu Siederdissen";
        homepage = "http://www.tbi.univie.ac.at/~choener/";
        url = "";
        synopsis = "Efficient RNA/DNA representations";
        description = "This is a base library for bioinformatics with emphasis on RNA\nand DNA primary structure.\n\nProvided are efficient encodings for short sequences, as\nrequired by RNA folding tools. Extended RNA secondary\nstructures can be represented as well.\n\n\n\nContains data from:\n\nFrequency and isostericity of RNA base pairs\n\nJesse Stombaugh, Craig L. Zirbel, Eric Westhof, and Neocles B. Leontis\n\nNucl. Acids Res. (2009)\n\n<http://dx.crossref.org/10.1093%2Fnar%2Fgkp011>\n\n\n\nnew in 0.7\n\n* updated to PrimitiveArray >= 0.5\n\nnew in 0.6.2.0\n\n* Updated to PrimitiveArray >= 0.2.0.0";
        buildType = "Simple";
      };
      components = {
        BiobaseXNA = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.csv
            hsPkgs.file-embed
            hsPkgs.primitive
            hsPkgs.repa
            hsPkgs.text
            hsPkgs.tuple
            hsPkgs.vector
            hsPkgs.PrimitiveArray
          ];
        };
      };
    }