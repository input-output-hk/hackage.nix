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
      specVersion = "2.0";
      identifier = {
        name = "co-log-core";
        version = "0.1.0";
      };
      license = "MPL-2.0";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/co-log";
      url = "";
      synopsis = "Logging library";
      description = "Logging library";
      buildType = "Simple";
    };
    components = {
      "co-log-core" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }