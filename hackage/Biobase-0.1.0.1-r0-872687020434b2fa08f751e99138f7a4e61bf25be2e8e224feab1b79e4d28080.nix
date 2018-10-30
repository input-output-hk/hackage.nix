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
      specVersion = "1.4.0";
      identifier = {
        name = "Biobase";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/Haskell/";
      url = "";
      synopsis = "Base library for bioinformatics";
      description = "Base library for bioinformatics providing the following features:\n\n* RNA primary and secondary structure\n\n* Infernal covariance models\n\n* Turner and Vienna energy files\n\n\n\nRNA sequences and energy files:\n\n* efficient format for RNA sequences, based on the vector package\n\n* import from strings, bytestrings, fasta files (using the bio library)\n\n* secondary structure manipulation functions, im- and export of Vienna-dotbracket notation\n\n* import Turner energy files\n\n* cf. http://rna.urmc.rochester.edu/NNDB/index.html\n\n* im- and export of Vienna 2.0 energy files\n\n\n\nCovariance models:\n\n* import covariance models\n\n* basic manipulation of covariance models\n\n* Stockholm file format manipulation\n\n\n\nUtility classes:\n\n* algebraic ring class\n\n* instances for Gibbs free energy, partition function probabilities, and scores\n\n* conversion between different entities\n\n* ready for the vector library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.filemanip)
          (hsPkgs.parsec)
          (hsPkgs.primitive)
          (hsPkgs.tuple)
          (hsPkgs.vector)
          (hsPkgs.split)
          (hsPkgs.HsTools)
          (hsPkgs.ParsecTools)
          (hsPkgs.PrimitiveArray)
        ];
      };
    };
  }