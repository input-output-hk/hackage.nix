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
        name = "IfElse";
        version = "0.85";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "J.R. Heard";
      author = "J.R. Heard and Wren Thornton";
      homepage = "";
      url = "";
      synopsis = "Anaphoric and miscellaneous useful control-flow";
      description = "Anaphoric and miscellaneous useful control-flow";
      buildType = "Simple";
    };
    components = {
      "IfElse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }