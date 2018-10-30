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
      specVersion = "1.6";
      identifier = {
        name = "xilinx-lava";
        version = "4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Satnam Singh, 2010.";
      maintainer = "Satnam Singh <s.singh@ieee.org>";
      author = "Satnam Singh";
      homepage = "";
      url = "http://www.raintown.org/wiki/index.php/Lava";
      synopsis = "The Lava system for FPGA design.";
      description = "A libray for generating circuits for Xilinx FPGAs with layout.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.old-time)
          (hsPkgs.array)
          (hsPkgs.mtl)
        ];
      };
    };
  }