{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "libffi";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Remi Turk 2008-2009";
      maintainer = "remi.turk@gmail.com";
      author = "Remi Turk";
      homepage = "";
      url = "";
      synopsis = "A binding to libffi";
      description = "A binding to libffi, allowing C functions of types only known at runtime to be called from Haskell.";
      buildType = "Simple";
    };
    components = {
      "libffi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."ffi") ];
        pkgconfig = [
          (pkgconfPkgs.libffi)
        ];
      };
    };
  }