{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "SWMMoutGetMB";
          version = "0.1.1.0";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "siddhanathan@gmail.com";
        author = "Siddhanathan Shanmugam";
        homepage = "https://github.com/siddhanathan/SWMMoutGetMB";
        url = "";
        synopsis = "A parser for SWMM 5 binary .OUT files";
        description = "The United States Environmental Protection Agency (EPA) Storm Water\nManagement Model (SWMM) is a dynamic hydrology-hydraulic water\nquality simulation model for single event or long-term (continuous)\nsimulation of runoff quantity and quality from primarily urban areas.\nSWMM 5, which is currently the newest version of SWMM, produces a\nbinary .OUT file as its output.  SWMMoutGetMB is a SWMM binary\nreader using the Get monad in Haskell to retrieve contents of this\nbinary file and save it into a SWMMObject, which can then be\nused in Haskell programs.";
        buildType = "Simple";
      };
      components = {
        "SWMMoutGetMB" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.data-binary-ieee754
            hsPkgs.split
          ];
        };
      };
    }