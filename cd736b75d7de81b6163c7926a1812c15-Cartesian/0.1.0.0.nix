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
        name = "Cartesian";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jonatanhsundqvist@gmail.com";
      author = "Jonatan H Sundqvist";
      homepage = "";
      url = "";
      synopsis = "Coordinate systems";
      description = "";
      buildType = "Simple";
    };
    components = {
      "Cartesian" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
        ];
      };
    };
  }