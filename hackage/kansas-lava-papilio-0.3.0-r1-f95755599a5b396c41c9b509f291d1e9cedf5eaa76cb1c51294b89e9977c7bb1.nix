{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "kansas-lava-papilio";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2012 Gergő Érdi";
      maintainer = "Gergő Érdi <gergo@erdi.hu>";
      author = "Gergő Érdi";
      homepage = "";
      url = "";
      synopsis = "Kansas Lava support files for the Papilio FPGA board";
      description = "IO definitions of the Papilio FPGA board and its Wings and MegaWings";
      buildType = "Simple";
    };
    components = {
      "kansas-lava-papilio" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.netlist)
          (hsPkgs.kansas-lava)
          (hsPkgs.kansas-lava-cores)
          (hsPkgs.filepath)
          (hsPkgs.sized-types)
          (hsPkgs.ansi-terminal)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.network)
        ];
      };
    };
  }