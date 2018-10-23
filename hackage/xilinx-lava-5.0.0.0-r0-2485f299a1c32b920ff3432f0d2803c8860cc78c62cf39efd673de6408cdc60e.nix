{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "xilinx-lava";
        version = "5.0.0.0";
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
      "xilinx-lava" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.old-time)
        ];
      };
    };
  }