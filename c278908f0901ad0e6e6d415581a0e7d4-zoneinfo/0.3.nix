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
        name = "zoneinfo";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Aylett <mark.aylett@gmail.com>";
      author = "Mark.Aylett";
      homepage = "";
      url = "";
      synopsis = "ZoneInfo library.";
      description = "ZoneInfo library.";
      buildType = "Configure";
    };
    components = {
      "zoneinfo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
    };
  }