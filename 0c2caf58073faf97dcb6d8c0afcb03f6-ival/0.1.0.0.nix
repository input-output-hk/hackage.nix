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
        name = "ival";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Target Corporation";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Intervals";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ival" = {
        depends  = [
          (hsPkgs.alg)
          (hsPkgs.base)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.ival)
          ];
        };
      };
    };
  }