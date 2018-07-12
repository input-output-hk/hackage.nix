{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lambda-bridge";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill <andygill@ku.edu>";
        homepage = "http://www.ittc.ku.edu/csdl/fpg/Tools/LambdaBridge";
        url = "";
        synopsis = "A bridge from Haskell (on a CPU) to VHDL on a FPGA.";
        description = "A bridge from Haskell (on a CPU) to VHDL on a FPGA.";
        buildType = "Simple";
      };
      components = {
        "lambda-bridge" = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          "haskell-test1" = {
            depends  = pkgs.lib.optional _flags.example hsPkgs.base;
          };
        };
      };
    }