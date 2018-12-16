{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { tests = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "PDBtools";
        version = "0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "gmr1887@gmail.com";
      author = "Grant Rotskoff";
      homepage = "http://www.github.com/rotskoff";
      url = "";
      synopsis = "A library for analysis of 3-D protein coordinates";
      description = "This is a collection of modules for the analysis of protein\ncoordinates. The suite allows efficient computation on a large\ndata set of RCSB protein data bank files. Parsing returns both\nprotein and ligand coordinates. All of the information in ATOM\nand HETATM records of a PDB file is preserved.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
        ];
      };
      exes = { "Test" = {}; };
    };
  }