{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "ViennaRNA-extras";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2017";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2017";
        homepage = "https://github.com/choener/ViennaRNA-extras";
        url = "";
        synopsis = "ViennaRNA v2 extensions";
        description = "Extra functionality on top of the ViennaRNA bindings. Please\nnote the special license of the ViennaRNA bindings (while the\n-extras library is BSD3, it is not very useful without the\nbindings)!\n\n\nIf you use this software, please cite:\n\n@\nR. Lorenz, S.H. Bernhart, C. Hoener zu Siederdissen, H. Tafer, C. Flamm, P.F. Stadler and I.L. Hofacker (2011)\nViennaRNA Package 2.0\nAlgorithms for Molecular Biology: 6:26\n@\n\n<http://www.almob.org/content/6/1/26>";
        buildType = "Simple";
      };
      components = {
        ViennaRNA-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.lens
            hsPkgs.QuickCheck
            hsPkgs.streaming
            hsPkgs.streaming-bytestring
            hsPkgs.strict
            hsPkgs.strict-base-types
            hsPkgs.BiobaseTypes
            hsPkgs.BiobaseXNA
            hsPkgs.ViennaRNA-bindings
          ];
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.vector
              hsPkgs.ViennaRNA-extras
            ];
          };
        };
      };
    }