{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hogg";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Conrad Parker, 2006";
        maintainer = "conradp@cse.unsw.edu.au";
        author = "Conrad Parker";
        homepage = "http://www.annodex.net/~conrad/software/hogg.html";
        url = "";
        synopsis = "Library and tools to manipulate the Ogg container format";
        description = "The HOgg package provides a commandline tool for manipulating Ogg files.\nIt supports chained and multiplexed Ogg bitstreams and Ogg Skeleton.\nHOgg also includes a library that may be used by other packages for handling\nthe Ogg container format.";
        buildType = "Custom";
      };
      components = {
        hogg = {
          depends  = [
            hsPkgs.base
            hsPkgs.fps
            hsPkgs.mtl
            hsPkgs.HUnit
          ];
        };
        exes = {
          hogg = {
            depends  = [
              hsPkgs.base
              hsPkgs.fps
              hsPkgs.mtl
              hsPkgs.HUnit
            ];
          };
          ListMergeTest = {
            depends  = [
              hsPkgs.base
              hsPkgs.fps
              hsPkgs.mtl
              hsPkgs.HUnit
            ];
          };
        };
      };
    }