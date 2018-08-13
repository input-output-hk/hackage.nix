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
        name = "arithmatic";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hawk.alan@gmail.com";
      author = "Alan Hawkins";
      homepage = "";
      url = "";
      synopsis = "do things with numbers";
      description = "a library which implements arithmatic functions";
      buildType = "Simple";
    };
    components = {
      "arithmatic" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }