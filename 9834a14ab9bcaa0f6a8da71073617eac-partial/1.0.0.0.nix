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
        name = "partial";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) Phil Freeman 2014";
      maintainer = "paf31@cantab.net";
      author = "Phil Freeman";
      homepage = "https://github.com/paf31/partial";
      url = "";
      synopsis = "A nullary type class for partial functions";
      description = "";
      buildType = "Simple";
    };
    components = {
      "partial" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }