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
        name = "hsXenCtrl";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson";
      homepage = "";
      url = "";
      synopsis = "FFI bindings to the Xen Control library.";
      description = "FFI bindings to xenctrl.h and perhaps more.\nThis is an early (incomplete) release, but in general\nthe System.Xen.CBindings should provide direct access\nto the C API while System.Xen will eventually provide\na higher level abstraction.";
      buildType = "Simple";
    };
    components = {
      "hsXenCtrl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.array)
        ];
      };
    };
  }