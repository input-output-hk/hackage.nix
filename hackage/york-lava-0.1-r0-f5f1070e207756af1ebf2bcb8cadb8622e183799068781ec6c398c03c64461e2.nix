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
      specVersion = "0";
      identifier = {
        name = "york-lava";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matthew Naylor <mfn@cs.york.ac.uk>";
      author = "Matthew Naylor";
      homepage = "http://www.cs.york.ac.uk/fp/reduceron/";
      url = "";
      synopsis = "A library for circuit description.";
      description = "York Lava is library for describing digital circuits. Descriptions\ncan be simulated in Hugs or GHC, and converted to VHDL compatible with\nXST, the Xilinx Synthesis Tool. It is largely compatible with Chalmers\nLava, but omits some features and offers a few new ones.  It is\nhaddocked, documented, and has been sucessfully used to create a\nfairly hefty FPGA design.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.containers)
        ];
      };
    };
  }