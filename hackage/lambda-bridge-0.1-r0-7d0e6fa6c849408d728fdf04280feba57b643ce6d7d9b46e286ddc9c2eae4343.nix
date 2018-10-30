{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = true; };
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
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "haskell-test1" = {
          depends  = pkgs.lib.optional (flags.example) (hsPkgs.base);
        };
      };
    };
  }