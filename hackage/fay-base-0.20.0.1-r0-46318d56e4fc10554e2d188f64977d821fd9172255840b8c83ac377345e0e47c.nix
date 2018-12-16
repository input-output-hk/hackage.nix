{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fay-base";
        version = "0.20.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "adam@bergmark.nl";
      author = "Chris Done";
      homepage = "https://github.com/faylang/fay/";
      url = "";
      synopsis = "The base package for Fay.";
      description = "The base package for Fay.\nThis package amongst others exports Prelude and FFI which you probably want to use with Fay.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.fay)
        ];
      };
    };
  }