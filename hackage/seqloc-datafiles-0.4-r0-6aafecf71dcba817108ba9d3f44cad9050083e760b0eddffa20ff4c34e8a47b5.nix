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
        name = "seqloc-datafiles";
        version = "0.4";
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
      "library" = {
        depends = [
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
        ];
      };
      exes = {
        "gtf-to-bed" = {
          depends = [
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
          ];
        };
        "bed-to-gtf" = {
          depends = [
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
          ];
        };
        "gtf-introns" = {
          depends = [
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
          ];
        };
        "bed-subregion" = {
          depends = [
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
          ];
        };
        "test-gtf" = {
          depends = [
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
          depends = [
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
        "genome-to-trx" = {
          depends = [
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
    };
  }