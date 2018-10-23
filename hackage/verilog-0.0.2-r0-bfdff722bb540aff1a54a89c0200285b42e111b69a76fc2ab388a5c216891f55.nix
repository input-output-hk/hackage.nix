{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "verilog";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
      author = "Tom Hawkins <tomahawkins@gmail.com>";
      homepage = "http://github.com/tomahawkins/verilog";
      url = "";
      synopsis = "A Verilog parser.";
      description = "This parser supports a very small subset of Verilog-95.\nIt is intended primarly for machine generated, synthesizable code.";
      buildType = "Simple";
    };
    components = {
      "verilog" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.polyparse)
        ];
      };
    };
  }