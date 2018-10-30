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
        name = "fay-jquery";
        version = "0.6.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Adam Bergmark, Brian Victor, Chris Done";
      maintainer = "adam@bergmark.nl";
      author = "Adam Bergmark, Brian Victor, Chris Done";
      homepage = "https://github.com/faylang/fay-jquery";
      url = "";
      synopsis = "jQuery bindings for Fay.";
      description = "jQuery bindings for Fay.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.fay-base)
          (hsPkgs.fay-text)
        ];
      };
    };
  }