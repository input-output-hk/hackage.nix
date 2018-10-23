{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fay-base";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "https://github.com/faylang/fay-base";
      url = "";
      synopsis = "The base package for Fay.";
      description = "The base package for Fay.\nThis package exports Prelude and FFI which you probably want to use with Fay.";
      buildType = "Simple";
    };
    components = {
      "fay-base" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fay)
        ];
      };
    };
  }