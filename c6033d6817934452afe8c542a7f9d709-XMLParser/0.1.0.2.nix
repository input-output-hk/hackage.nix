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
        name = "XMLParser";
        version = "0.1.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "hawk.alan@gmail.com";
      author = "Alan Hawkins";
      homepage = "xy30.com";
      url = "";
      synopsis = "A library to parse xml";
      description = "uses parsec to parse xml";
      buildType = "Simple";
    };
    components = {
      "XMLParser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
    };
  }