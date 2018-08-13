{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "biostockholm";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Lessa";
      homepage = "";
      url = "";
      synopsis = "Reading and writing Stockholm files (multiple sequence alignment, used by Rfam and Infernal).";
      description = "Parsing and pretty printing of files in Stockholm 1.0 format.  See:\n\n* <http://sonnhammer.sbc.su.se/Stockholm.html>\n\n* <ftp://ftp.sanger.ac.uk/pub/databases/Pfam/current_release/relnotes.txt>\n\n* <http://en.wikipedia.org/wiki/Stockholm_format>";
      buildType = "Simple";
    };
    components = {
      "biostockholm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.explicit-exception)
          (hsPkgs.biocore)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.explicit-exception)
            (hsPkgs.biocore)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }