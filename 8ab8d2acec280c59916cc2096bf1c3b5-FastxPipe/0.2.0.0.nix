{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "FastxPipe";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014-2015 Rob O'Callahan";
        maintainer = "rcallahan@eurekagenomics.com";
        author = "Rob O'Callahan";
        homepage = "";
        url = "";
        synopsis = "Fasta and Fastq streaming";
        description = "Optimized fasta and fastq parsing using Pipes";
        buildType = "Simple";
      };
      components = {
        "FastxPipe" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.pipes
            hsPkgs.pipes-bytestring
            hsPkgs.pipes-attoparsec
          ];
        };
      };
    }