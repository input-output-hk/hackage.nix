{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "biostockholm";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "felipe.lessa@gmail.com";
        author = "Felipe Lessa";
        homepage = "";
        url = "";
        synopsis = "Parsing and rendering of Stockholm files (used by Pfam, Rfam and Infernal).";
        description = "Parsing and rendering of files in Stockholm 1.0 format.  Among\nthe users of the Stockholm format are Pfam, Rfam and Infernal.\nThese files hold information about families of proteins or\nnon-coding RNAs.  For more information, please see:\n\n* <http://sonnhammer.sbc.su.se/Stockholm.html>\n\n* <ftp://ftp.sanger.ac.uk/pub/databases/Pfam/current_release/relnotes.txt>\n\n* <http://en.wikipedia.org/wiki/Stockholm_format>";
        buildType = "Simple";
      };
      components = {
        biostockholm = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.conduit
            hsPkgs.attoparsec
            hsPkgs.attoparsec-conduit
            hsPkgs.blaze-builder
            hsPkgs.blaze-builder-conduit
            hsPkgs.biocore
          ];
        };
        tests = {
          runtests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.zlib-conduit
              hsPkgs.biocore
              hsPkgs.transformers
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.biostockholm
            ];
          };
        };
      };
    }