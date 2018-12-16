{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "xilinx-lava";
        version = "5.0.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "Satnam Singh, 2010.";
      maintainer = "Satnam Singh <s.singh@ieee.org>";
      author = "Satnam Singh";
      homepage = "";
      url = "http://www.raintown.org/lava";
      synopsis = "The Lava system for Xilinx FPGA design with layout combinators.";
      description = "A libray for generating circuits for Xilinx FPGAs with layout.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.haskell98)
          (hsPkgs.old-time)
          (hsPkgs.process)
        ];
      };
      exes = {
        "report_par" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.haskell98)
          ];
        };
        "implement" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }