{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "BiobaseInfernal";
          version = "0.8.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2011 - 2017";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen";
        homepage = "https://github.com/choener/BiobaseInfernal";
        url = "";
        synopsis = "Infernal data structures and tools";
        description = "Provides import and export facilities for Infernal/Rfam data\nformats. We include Stockholm, CM, verbose Infernal results,\nand tabulated Infernal results. Some small tools are included.\n\nThe VerboseHit format is slightly extended to allow simple\nannotations. This extension should be backward-compatible with\nstandard-compliant parsers.\n\nThe @cmsearchFilter@ program provides filtering and coloring\noptions.";
        buildType = "Simple";
      };
      components = {
        BiobaseInfernal = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.cereal-text
            hsPkgs.cereal-vector
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.parallel
            hsPkgs.pipes
            hsPkgs.pipes-attoparsec
            hsPkgs.pipes-bytestring
            hsPkgs.pipes-parse
            hsPkgs.pipes-safe
            hsPkgs.pipes-zlib
            hsPkgs.primitive
            hsPkgs.strict
            hsPkgs.string-conversions
            hsPkgs.text
            hsPkgs.text-binary
            hsPkgs.transformers
            hsPkgs.tuple
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
            hsPkgs.vector
            hsPkgs.vector-th-unbox
            hsPkgs.zlib
            hsPkgs.BiobaseTypes
            hsPkgs.BiobaseXNA
            hsPkgs.DPutils
            hsPkgs.PrimitiveArray
          ];
        };
        exes = {
          cmsearchFilter = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.BiobaseInfernal
            ];
          };
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.lens
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.BiobaseInfernal
            ];
          };
        };
        benchmarks = {
          parsing = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.lens
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.BiobaseInfernal
            ];
          };
        };
      };
    }