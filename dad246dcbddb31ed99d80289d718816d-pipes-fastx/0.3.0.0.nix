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
      specVersion = "1.10";
      identifier = {
        name = "pipes-fastx";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2015";
      maintainer = "ropoctl@gmail.com";
      author = "Rob O'Callahan";
      homepage = "";
      url = "";
      synopsis = "Streaming parsers for Fasta and Fastq";
      description = "Streaming parsers for Fasta and Fastq";
      buildType = "Simple";
    };
    components = {
      "pipes-fastx" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.pipes)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-attoparsec)
        ];
      };
    };
  }