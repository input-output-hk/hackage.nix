{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hills";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 David Fletcher";
        maintainer = "david@bubblycloud.com";
        author = "David Fletcher";
        homepage = "http://www.bubblycloud.com/hills/";
        url = "";
        synopsis = "Generate STL models from SRTM elevation data.";
        description = "This program generates 3D models of areas of the\nearth's surface.\n\nIt uses the SRTM 90m elevation data from\nCGIAR-CSI which is downloadable free of charge\n(see <http://srtm.csi.cgiar.org/>).  It outputs STL.\n\nConsult README.md for full instructions.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hills = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.text
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }