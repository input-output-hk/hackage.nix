{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      all = false;
      unit = false;
      spartan3e = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kansas-lava-cores";
          version = "0.1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 The University of Kansas";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill";
        homepage = "http://ittc.ku.edu/csdl/fpg/Tools/KansasLava";
        url = "";
        synopsis = "FPGA Cores Written in Kansas Lava.";
        description = "Kansas Lava Cores is a collection of libraries, written in Kansas Lava,\nthat describe specific hardware components, as well as a Spartan3e\nboard monad and simulator, and testing framework.";
        buildType = "Simple";
      };
      components = {
        kansas-lava-cores = {
          depends  = [
            hsPkgs.base
            hsPkgs.kansas-lava
            hsPkgs.sized-types
            hsPkgs.ansi-terminal
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.filepath
          ];
        };
        exes = {
          spartan3e-demo = {
            depends  = if _flags.spartan3e || _flags.all
              then [
                hsPkgs.base
                hsPkgs.kansas-lava
                hsPkgs.sized-types
                hsPkgs.ansi-terminal
                hsPkgs.data-default
                hsPkgs.directory
                hsPkgs.bytestring
                hsPkgs.network
                hsPkgs.random
                hsPkgs.cmdargs
                hsPkgs.filepath
              ]
              else [ hsPkgs.base ];
          };
          kansas-lava-cores-tests = {
            depends  = if _flags.unit || _flags.all
              then [
                hsPkgs.base
                hsPkgs.kansas-lava
                hsPkgs.sized-types
                hsPkgs.ansi-terminal
                hsPkgs.data-default
                hsPkgs.directory
                hsPkgs.bytestring
                hsPkgs.network
                hsPkgs.random
                hsPkgs.filepath
              ]
              else [ hsPkgs.base ];
          };
        };
      };
    }