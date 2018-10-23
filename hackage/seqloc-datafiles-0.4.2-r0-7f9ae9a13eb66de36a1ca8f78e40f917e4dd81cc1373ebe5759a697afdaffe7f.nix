{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "seqloc-datafiles";
        version = "0.4.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nick@ingolia.org";
      author = "Nick Ingolia";
      homepage = "http://www.ingolia-lab.org/seqloc-datafiles-tutorial.html";
      url = "";
      synopsis = "Read and write BED and GTF format genome annotations";
      description = "Read and write BED and GTF format genome annotations";
      buildType = "Simple";
    };
    components = {
      "seqloc-datafiles" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
          (hsPkgs.iteratee)
          (hsPkgs.seqloc)
          (hsPkgs.biocore)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.resourcet)
        ];
      };
      exes = {
        "gtf-to-bed" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.iteratee)
            (hsPkgs.seqloc)
            (hsPkgs.biocore)
            (hsPkgs.transformers)
            (hsPkgs.monads-tf)
            (hsPkgs.lifted-base)
            (hsPkgs.transformers-base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
          ];
        };
        "bed-to-gtf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.iteratee)
            (hsPkgs.seqloc)
            (hsPkgs.biocore)
            (hsPkgs.transformers)
            (hsPkgs.monads-tf)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.lifted-base)
            (hsPkgs.transformers-base)
            (hsPkgs.resourcet)
          ];
        };
        "gtf-introns" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.iteratee)
            (hsPkgs.seqloc)
            (hsPkgs.biocore)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.cmdtheline)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
          ];
        };
        "bed-subregion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.iteratee)
            (hsPkgs.seqloc)
            (hsPkgs.biocore)
            (hsPkgs.transformers)
            (hsPkgs.monads-tf)
            (hsPkgs.pretty)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.cmdtheline)
            (hsPkgs.filepath)
            (hsPkgs.lifted-base)
            (hsPkgs.transformers-base)
            (hsPkgs.resourcet)
          ];
        };
        "genome-to-trx" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.iteratee)
            (hsPkgs.seqloc)
            (hsPkgs.biocore)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.vector)
            (hsPkgs.filepath)
            (hsPkgs.resourcet)
          ];
        };
      };
      tests = {
        "test-gtf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.iteratee)
            (hsPkgs.seqloc)
            (hsPkgs.biocore)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
          ];
        };
        "test-bed" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.iteratee)
            (hsPkgs.seqloc)
            (hsPkgs.biocore)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.lifted-base)
            (hsPkgs.transformers-base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
          ];
        };
        "test-subregions" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.biocore)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.hashable)
            (hsPkgs.seqloc)
            (hsPkgs.lifted-base)
            (hsPkgs.transformers-base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.iteratee)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }