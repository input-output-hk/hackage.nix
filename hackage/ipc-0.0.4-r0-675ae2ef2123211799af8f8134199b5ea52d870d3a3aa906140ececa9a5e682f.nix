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
        name = "ipc";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2008, Thomas DuBuisson";
      maintainer = "Thomas.DuBuisson@gmail.com";
      author = "Thomas DuBuisson";
      homepage = "";
      url = "";
      synopsis = "High level inter-process communication library";
      description = "Provides inter-process communication at a high level";
      buildType = "Simple";
    };
    components = {
      "ipc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.dlist)
          (hsPkgs.network-bytestring)
          (hsPkgs.binary)
          (hsPkgs.stm)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
        ];
      };
    };
  }