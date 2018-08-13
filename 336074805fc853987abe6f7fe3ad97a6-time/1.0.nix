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
      specVersion = "0";
      identifier = {
        name = "time";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<ashley@semantic.org>";
      author = "Ashley Yakeley";
      homepage = "http://semantic.org/TimeLib/";
      url = "";
      synopsis = "time library";
      description = "";
      buildType = "Custom";
    };
    components = {
      "time" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }