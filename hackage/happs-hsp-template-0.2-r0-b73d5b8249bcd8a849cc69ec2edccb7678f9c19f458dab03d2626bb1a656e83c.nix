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
      specVersion = "0";
      identifier = {
        name = "happs-hsp-template";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Himmelstrup (lemmih@gmail.com)";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Utilities for using HSP templates in HAppS applications.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.network)
          (hsPkgs.hinotify)
          (hsPkgs.plugins)
          (hsPkgs.RJson)
          (hsPkgs.HAppS-Server)
          (hsPkgs.hsp)
        ];
      };
    };
  }