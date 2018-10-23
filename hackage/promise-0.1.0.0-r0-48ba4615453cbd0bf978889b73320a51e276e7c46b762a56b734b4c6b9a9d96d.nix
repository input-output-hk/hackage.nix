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
        name = "promise";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "http://github.com/jfischoff/promise";
      url = "";
      synopsis = "A monadic interface for async";
      description = "";
      buildType = "Simple";
    };
    components = {
      "promise" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
        ];
      };
    };
  }