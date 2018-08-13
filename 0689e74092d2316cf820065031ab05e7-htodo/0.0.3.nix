{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      safe = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "htodo";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Yoichi Hirai";
      maintainer = "Yoichi Hirai <i@yoichihirai.com>";
      author = "Yoichi Hirai";
      homepage = "http://github.com/pirapira/htodo";
      url = "";
      synopsis = "A todo application.";
      description = "A todo application.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "htodo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.HDBC)
          ];
        };
      };
    };
  }