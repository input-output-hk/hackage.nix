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
      specVersion = "1.4";
      identifier = {
        name = "samtools";
        version = "0.2.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nick@ingolia.org";
      author = "Nicholas Ingolia";
      homepage = "http://www.ingolia-lab.org/software/samtools/";
      url = "";
      synopsis = "Binding to the C samtools library";
      description = "Binding to the C samtools library, which reads and\nwrites SAM format alignments, both binary and tab-\ndelimited text formats. It also supports rapid access\nto specific alignments in a sorted BAM file and access\nto sequences from indexed Fasta files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.seqloc)
        ];
        libs = [ (pkgs."z") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "samtest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.seqloc)
            (hsPkgs.process)
            (hsPkgs.filepath)
          ];
          libs = [ (pkgs."z") ];
          build-tools = [
            (hsPkgs.buildPackages.c2hs)
          ];
        };
      };
    };
  }