{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bioalign";
          version = "0.0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "dfornika@gmail.com";
        author = "Dan Fornika <dfornika@gmail.com>";
        homepage = "https://patch-tag.com/r/dfornika/biophd/home";
        url = "";
        synopsis = "Data structures and helper functions for calculating alignments";
        description = "Data structures and helper functions for calculating alignments";
        buildType = "Simple";
      };
      components = {
        "bioalign" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.biocore
            hsPkgs.bytestring
          ];
        };
      };
    }