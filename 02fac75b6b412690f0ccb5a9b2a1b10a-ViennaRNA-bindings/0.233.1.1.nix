{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ViennaRNA-bindings";
          version = "0.233.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "The ViennaRNA Team 1994-2017";
        maintainer = "choener@tbi.univie.ac.at";
        author = "Christian Hoener zu Siederdissen (bindings) 2013-2017, The ViennaRNA Team (library) 1994-2017";
        homepage = "https://github.com/choener/ViennaRNA-bindings";
        url = "";
        synopsis = "ViennaRNA v2 bindings";
        description = "Bindings to the ViennaRNA package, version 2.3.3.\n\nOnly a partial set of bindings is provided. If you need\nadditional functions, please open an issue on github.\n\nThe ViennaRNA bindings package now directly provide all\nnecessary functionality. Please note that this package uses the\nsame license as the ViennaRNA package.\n\nIf you use this software, please cite:\n\n@\nR. Lorenz, S.H. Bernhart, C. Hoener zu Siederdissen, H. Tafer, C. Flamm, P.F. Stadler and I.L. Hofacker (2011)\nViennaRNA Package 2.0\nAlgorithms for Molecular Biology: 6:26\n@\n\n<http://www.almob.org/content/6/1/26>";
        buildType = "Simple";
      };
      components = {
        ViennaRNA-bindings = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-silver
              hsPkgs.tasty-th
              hsPkgs.ViennaRNA-bindings
            ];
          };
        };
      };
    }