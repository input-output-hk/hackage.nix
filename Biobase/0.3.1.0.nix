{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4.0";
        identifier = {
          name = "Biobase";
          version = "0.3.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2010,2011";
        maintainer = "choener@tbi.univie.ac.at";
        author = "Christian Hoener zu Siederdissen";
        homepage = "http://www.tbi.univie.ac.at/~choener/";
        url = "";
        synopsis = "Base library for bioinformatics";
        description = "Base library for bioinformatics providing the following features:\n\nRNA sequences and energy files:\n\n* efficient format for RNA sequences, based on the vector package\n\n* internal conversion from strings and bytestrings\n\n* secondary structure manipulation functions, im- and export of Vienna-dotbracket notation\n\n\n\nUtility classes:\n\n* algebraic ring class\n\n* instances for Gibbs free energy, partition function probabilities, and scores\n\n* conversion between different entities\n\n\n\nBioinformatics data sources:\n\n* mostly just imports, some export functions are provided\n\n* Fasta (please use the \"bio\" library by Ketil Malde)\n\n* Mafft\n\n* RNA secondary structure: Dot-Bracket, CT\n\n* ViennaRNA energy files (with default parameters)\n\n* Turner energy files: cf. <http://rna.urmc.rochester.edu/NNDB/index.html>\n\n* RNAstrand database: dot-parenthesis (one file, many entries)\n\n* FR3D: basepairs\n\n* Infernal: covariance models (text-based)\n\n* MC-Fold: NCM database\n\n\n\nImportant notes:\n\n* In general, this library is not unicode safe (and could somebody tell me the reason for encoding DNA/RNA sequences in unicode?)";
        buildType = "Simple";
      };
      components = {
        Biobase = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.file-embed
            hsPkgs.filemanip
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.primitive
            hsPkgs.split
            hsPkgs.tuple
            hsPkgs.utility-ht
            hsPkgs.vector
            hsPkgs.zlib
            hsPkgs.either-unwrap
            hsPkgs.HsTools
            hsPkgs.ParsecTools
            hsPkgs.PrimitiveArray
            hsPkgs.vector-read-instances
          ];
        };
      };
    }