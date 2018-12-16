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
      specVersion = "1.10.0";
      identifier = {
        name = "BiobaseEnsembl";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Florian Eggenhofer, 2018";
      maintainer = "egg@informatik.uni-freiburg.de";
      author = "Florian Eggenhofer";
      homepage = "https://github.com/eggzilla/BiobaseEnsembl";
      url = "";
      synopsis = "Ensembl related datastructures and functions";
      description = "This library contains high through put sequencing and Ensembl-related functionality:\n- Datastructures to query Ensembl REST interface\n\n- Parser for GFF3\n\n- Datastructure for GFF3";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.vector)
          (hsPkgs.word8)
          (hsPkgs.either-unwrap)
          (hsPkgs.text)
        ];
      };
    };
  }