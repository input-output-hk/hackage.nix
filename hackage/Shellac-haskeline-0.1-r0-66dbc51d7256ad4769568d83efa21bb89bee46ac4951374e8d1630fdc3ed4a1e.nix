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
      specVersion = "1.2";
      identifier = {
        name = "Shellac-haskeline";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Judah Jacobson";
      maintainer = "Judah Jacobson <judah.jacobson@gmail.com>";
      author = "Judah Jacobson";
      homepage = "";
      url = "";
      synopsis = "Haskeline backend module for Shellac";
      description = "This module provides a backend for Shellac using the Haskeline library.  It\nprovides rich line editing capabilities, command completion and command\nhistory features.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Shellac)
          (hsPkgs.haskeline)
          (hsPkgs.mtl)
        ];
      };
    };
  }