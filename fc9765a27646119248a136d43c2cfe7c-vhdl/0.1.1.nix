{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "vhdl";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009 Christiaan Baaij & Matthijs Kooijman";
      maintainer = "christiaan.baaij@gmail.com";
      author = "Christiaan Baaij";
      homepage = "";
      url = "http://github.com/christiaanb/vhdl/tree/master";
      synopsis = "VHDL AST and pretty printer";
      description = "VHDL AST and pretty printer, should only be used for building AST's, not as part of a VHDL parser";
      buildType = "Simple";
    };
    components = {
      "vhdl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.regex-posix)
          (hsPkgs.pretty)
          (hsPkgs.mtl)
        ];
      };
    };
  }