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
      specVersion = "1.10";
      identifier = {
        name = "imperative-edsl-vhdl";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "Markus Aronsson";
      homepage = "";
      url = "";
      synopsis = "Deep embedding of VHDL programs with code generation.";
      description = "Deep embedding of VHDL programs with code generation.";
      buildType = "Simple";
    };
    components = {
      "imperative-edsl-vhdl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.syntactic)
          (hsPkgs.operational-alacarte)
          (hsPkgs.language-vhdl)
          (hsPkgs.pretty)
        ];
      };
    };
  }