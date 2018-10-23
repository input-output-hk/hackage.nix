{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "t3-client";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Joe Vargas";
      maintainer = "http://github.com/jxv";
      author = "Joe Vargas";
      homepage = "http://github.com/jxv/t3#readme";
      url = "";
      synopsis = "tic-tac-toe Rexports for client";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "t3-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.t3-game)
          (hsPkgs.t3-server)
        ];
      };
    };
  }