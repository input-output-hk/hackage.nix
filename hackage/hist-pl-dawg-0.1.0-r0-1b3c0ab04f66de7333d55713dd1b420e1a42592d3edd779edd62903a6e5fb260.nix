{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hist-pl-dawg";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/hist-pl/tree/master/dawg";
      url = "";
      synopsis = "A generic, DAWG-based dictionary";
      description = "A generic dictionary implementation based on directed acyclic word graphs.";
      buildType = "Simple";
    };
    components = {
      "hist-pl-dawg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.text-binary)
          (hsPkgs.dawg)
        ];
      };
    };
  }