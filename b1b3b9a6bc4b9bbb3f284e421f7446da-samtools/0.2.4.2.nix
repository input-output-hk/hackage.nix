{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "samtools";
          version = "0.2.4.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "nick@ingolia.org";
        author = "Nicholas Ingolia";
        homepage = "http://www.ingolia-lab.org/samtools-tutorial.html";
        url = "";
        synopsis = "Binding to the C samtools library";
        description = "Binding to the C samtools library, which reads and\nwrites SAM format alignments, both binary and tab-\ndelimited text formats. It also supports rapid access\nto specific alignments in a sorted BAM file and access\nto sequences from indexed Fasta files.";
        buildType = "Simple";
      };
      components = {
        "samtools" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.seqloc
          ];
          libs = [ pkgs.z ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
        exes = {
          "samtest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.vector
              hsPkgs.seqloc
              hsPkgs.process
              hsPkgs.filepath
            ];
            libs = [ pkgs.z ];
            build-tools = [
              hsPkgs.buildPackages.c2hs
            ];
          };
        };
      };
    }