{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.4.0";
      identifier = {
        name = "BiobaseInfernal";
        version = "0.6.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Infernal data structures and tools";
      description = "Provides import and export facilities for Infernal/Rfam data\nformats. We include Stockholm, CM, verbose Infernal results,\nand tabulated Infernal results. Some small tools are included.\n\nThe VerboseHit format is slightly extended to allow simple\nannotations. This extension should be backward-compatible with\nstandard-compliant parsers.\n\nThis package uses Int's to store sequence position information.\nDon't compile for 32bit. (And yes, this is a TODO, to change to\nInt64).\n\n\n\nChanges in 0.6.0.0\n\n* multiple changes to data representation (mostly newtypes) and\ndocumentation\n\n* load the Rfam.fasta.gz file (and prepare lookup structures)\n\n* partial biocore integration\n\nChanges in 0.5.4.1\n\n* fix-up for VH export\n\n* half-baked CM type (not useful yet)";
      buildType = "Simple";
    };
    components = {
      "BiobaseInfernal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.biocore)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-iteratee)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.either-unwrap)
          (hsPkgs.iteratee)
          (hsPkgs.iteratee-compress)
          (hsPkgs.transformers)
          (hsPkgs.tuple)
          (hsPkgs.vector)
          (hsPkgs.PrimitiveArray)
        ];
      };
    };
  }